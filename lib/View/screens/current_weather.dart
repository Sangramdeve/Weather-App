import 'dart:async';
import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:weather_app/Controller/fetch_weather_data.dart';
import 'package:weather_app/Model/current_weather_model/json_model.dart';
import 'package:weather_app/Model/daily_weather_forecast_model/forecast_json.dart';
import 'package:weather_app/backend_utils/exception/api_exception.dart';
import 'package:weather_app/constants.dart';
import 'package:weather_app/View/metarial_widgets/air_quality.dart';
import 'package:weather_app/View/metarial_widgets/forecast_card_Item.dart';



class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {

  WeatherService weatherService = WeatherService();
  WeatherData? currentWeather;
  List<DailyWeatherData>? dailyWeatherList;
  String message = 'location';

  @override
  void initState() {
    print('set 0');
    getUserLocation();
    super.initState();
  }

  void getUserLocation() async {
    print('set 1');
    try {
      Position position = await Geolocator.getCurrentPosition(
        desiredAccuracy: LocationAccuracy.medium,
      );
      fetchWeatherData(position.latitude, position.longitude);
    } catch (e) {

      if (e is TimeoutException) {
        Position? lastKnownPosition = await Geolocator.getLastKnownPosition();
        if (lastKnownPosition != null) {
        } else {
          handleLocationError();
        }
      } else {
        handleLocationError('Error: $e');
      }
    }
  }



  void fetchWeatherData(double latitude, double longitude) async {
    print('set 2');
    try {
      var data = await weatherService.currentWeatherApi(latitude, longitude);
      WeatherForecast weatherForecast = await weatherService.DailyForcastApi(latitude, longitude);
      setState(() {
        currentWeather = data;
        dailyWeatherList = weatherForecast.list;
      });
      print('forecast  $dailyWeatherList');
    } catch (e) {
      print('Failed to fetch weather data: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    print('set 3');
    DateTime now = DateTime.now();
    String greeting = '';

    if (now.hour < 12) {
      greeting = 'Good Morning';
    } else if (now.hour < 18) {
      greeting = 'Good Afternoon';
    } else {
      greeting = 'Good Evening';
    }
    return Scaffold(
      backgroundColor: backgroundColor,
      body:  currentWeather == null
          ? Center(
        child: CircularProgressIndicator(),
          )
          : Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Colors.blue, Colors.purple],
            // Optional: Add stops for more control
            stops: [0.0, 0.7],
            // Optional: Add a transform to rotate the gradient
            transform: GradientRotation(0.5),
          ),
        ),

        child: SafeArea(
          minimum: const EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 20),
          child: Center(
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    greeting,
                    style: const TextStyle(fontWeight: FontWeight.bold,color: Colors.white),
                  ),
                  subtitle: Text(_getFormattedDate(now),style: const TextStyle(color: Colors.white,)),
                ),
                Text('${currentWeather!.sys.country}/${currentWeather!.name}',
                  style: const TextStyle(fontSize: 25,fontWeight: FontWeight.w500,color: Colors.white),),
                Text( '${(currentWeather!.main.temp - 273.15).toStringAsFixed(2)} °C',
                  style: const TextStyle(fontSize: 45,fontWeight: FontWeight.bold,color: Colors.white),),
                Text('${currentWeather!.weather[0].description}',
                  style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w500,color: Colors.white),),
                const Spacer(),
                Container(
                  height: 90,
                  width: 350,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.white.withOpacity(0.1),
                      ),
                    ),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(15),
                    child: BackdropFilter(
                      filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(15),
                          border: Border.all(
                            color: Colors.white.withOpacity(0.2),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                          child: Row(
                            children: [
                              AirQuality(option: 'Clouds', value: '${currentWeather!.clouds.all}',),
                              const Spacer(),
                              AirQuality(option: 'Humidity', value: '${currentWeather!.main.humidity}%',),
                              const Spacer(),
                              AirQuality(option: 'Wind', value: '${currentWeather!.wind.speed}kmh',)
                            ],
                          ),
                        ),

                      ),
                    )
                  )
                ),
                const Spacer(),
                Container(
                    height: 400,
                    width: 360,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.white.withOpacity(0.1),
                      ),
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.1),
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.white.withOpacity(0.2),
                              ),
                            ),
                            child: ListView.builder(
                              itemCount: dailyWeatherList!.length,
                              itemBuilder: (context, index) {
                                final dailyWeather = dailyWeatherList![index];
                                // Calculate the date for each item
                                DateTime date = DateTime.now().add(Duration(days: index));

                                // Pass both weatherData and date to ForecastCardItem
                                return ForecastCardItem(forecastData: dailyWeather, date: date);
                              },
                            ),

                          ),
                        )
                    )
                )
              ],
            ),
          ),
        ),
      )
    );
  }

  String _getFormattedDate(DateTime dateTime) {
    // Format the date as desired (e.g., 'Thu, 31 Oct')
    return '${_getWeekday(dateTime.weekday)}, ${dateTime.day} ${_getMonth(dateTime.month)}';
  }

  String _getWeekday(int weekday) {
    // Convert weekday index to a short weekday name (e.g., 'Thu')
    List<String> weekdays = ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'];
    return weekdays[weekday - 1];
  }

  String _getMonth(int month) {
    // Convert month index to a short month name (e.g., 'Oct')
    List<String> months = [
      'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
      'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
    ];
    return months[month - 1];
  }
}


