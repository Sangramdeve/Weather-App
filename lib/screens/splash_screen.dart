import 'dart:async';
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';

import '../Model/daily_weather.dart';
import '../Model/weather_model.dart';
import '../Provider/WeatherProvider.dart';
import '../utils/weather_service.dart';
import 'onBording_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  final WeatherService weatherService = WeatherService();
  WeatherData? _weatherData;


  @override
  void initState() {
    super.initState();
    _determineUserCurrentPosition();
    Future.delayed(const Duration(seconds: 3), () {
      // Navigate to the main app screen (Login in this case)
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => const OnbordingScreen()),
      );
    });
  }

  Future _determineUserCurrentPosition() async {
    LocationPermission locationPermission;
    bool isLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();
    //check if user enable service for location permission
    if (!isLocationServiceEnabled) {
      debugPrint("user don't enable location permission");
    }

    locationPermission = await Geolocator.checkPermission();

    //check if user denied location and retry requesting for permission
    if (locationPermission == LocationPermission.denied) {
      locationPermission = await Geolocator.requestPermission();
      if (locationPermission == LocationPermission.denied) {
        debugPrint("user denied location permission");
      }
    }

    //check if user denied permission forever
    if (locationPermission == LocationPermission.deniedForever) {
      debugPrint("user denied permission forever");
    }
    getUserLocation();
    return await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.best);
  }

  void getUserLocation() async {
    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.medium,
      );
      _fetchWeather(position);
      getWeatherData(position);
    } catch (e) {
      if (e is TimeoutException) {
        Position? lastKnownPosition;
        try {
          lastKnownPosition = await Geolocator.getLastKnownPosition();
        } catch (e) {
          // Handle errors related to getLastKnownPosition
        }
        if (lastKnownPosition != null) {
          _fetchWeather(lastKnownPosition);
          getWeatherData(lastKnownPosition);
        } else {
          handleLocationError('Unable to obtain location.');
        }
      } else {
        // Handle other errors
        handleLocationError('Error: $e');
      }
    }
  }

  void _fetchWeather(Position position) async {
    final weatherProvider = Provider.of<WeatherProvider>(context, listen: false);
    try {
      Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
      double lat = position.latitude;
      double lon = position.longitude;
      final response = await weatherService.fetchWeather(lat, lon);
      print('Raw weather data: ${response.body}'); // Print the raw JSON data

      Map<String, dynamic> responseBody = jsonDecode(response.body);

      // Create a WeatherData object from the parsed JSON
      weatherProvider.weatherData = WeatherData.fromJson(responseBody);
      /* setState(() {
        _weatherData = WeatherData.fromJson(responseBody);
      });*/
      print('Parsed weather data: ${_weatherData!.toJson()}');
      print('User coordinates: $position');
    } catch (e) {
      print('Error fetching weather data: $e');
    }
  }

  Future<void> getWeatherData(Position position) async {
    final weatherProvider = Provider.of<WeatherProvider>(context, listen: false);

    double lat = position.latitude;
    double lon = position.longitude;
    final jsonData = await weatherService.fetchDailyWeather(lat, lon);
    print('daily$jsonData');
    if (jsonData.isNotEmpty) {
      WeatherForecast forecast = WeatherForecast.fromJson(jsonData);
      List<dailyWeatherData> weatherList = forecast.list;
      weatherProvider.updateWeatherForecastList(weatherList);

      // Print the data
      for (var weather in weatherList) {
        print('Date: ${weather.dtTxt}, Temp: ${weather.main.temp}');
      }
    }
  }

  void handleLocationError(String errorMessage) {
    // Ensure the widget is still mounted before showing the SnackBar
    if (mounted) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(errorMessage),
          duration: const Duration(seconds: 3),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return  Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Lottie.asset("assets/Animation - 1719630577744.json",
            height: screenHeight,
            width: screenWidth,
          ),),
          Positioned(
            top: -150,
            child: Lottie.asset("assets/Animation - 1719630791207.json",
              height: screenHeight,
              width: screenWidth,
            ),)
        ],
      ),
    );
  }
}
