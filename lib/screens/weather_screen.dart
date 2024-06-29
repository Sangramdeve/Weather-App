import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/Provider/WeatherProvider.dart';

import '../Model/daily_weather.dart';
import '../Model/weather_model.dart';
import '../constants.dart';
import '../utils/weather_service.dart';
import '../widgets/air_quality.dart';
import '../widgets/forecast_card_Item.dart';

class WeatherScreen extends StatefulWidget {
  const WeatherScreen({super.key});

  @override
  State<WeatherScreen> createState() => _WeatherScreenState();
}

class _WeatherScreenState extends State<WeatherScreen> {



  @override
  Widget build(BuildContext context) {
    final weatherProvider = Provider.of<WeatherProvider>(context);

    DateTime now = DateTime.now();
    String greeting = '';

    // Determine if it's morning or evening based on current hour
    if (now.hour < 12) {
      greeting = 'Good Morning';
    } else if (now.hour < 18) {
      greeting = 'Good Afternoon';
    } else {
      greeting = 'Good Evening';
    }
    double tempInKelvin = weatherProvider.weatherData!.main.temp;
    double tempInCelsius = tempInKelvin - 273.15;

    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: ListTile(
          title: Text(
            greeting,
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text('${_getFormattedDate(now)}'),
        ),
      ),
      body:  Consumer<WeatherProvider>(builder: (context,weatherProvider,_){
        return SafeArea(
          minimum: const EdgeInsets.only(left: 10,right: 10,top: 20,bottom: 20),
          child: Center(
            child: Column(
              children: [
                Text('${weatherProvider.weatherData!.sys.country}/${weatherProvider.weatherData!.name}',style: const TextStyle(fontSize: 25,fontWeight: FontWeight.w500),),
                Text( '${tempInCelsius.toStringAsFixed(2)} °C',style: const TextStyle(fontSize: 45,fontWeight: FontWeight.bold),),
                Text('${weatherProvider.weatherData!.weather[0].description}',style: const TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                const SizedBox(height: 30,),
                Container(
                  height: 90,
                  width: 350,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child:  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
                    child: Row(
                      children: [
                        AirQuality(option: 'Clouds', value: '${weatherProvider.weatherData!.clouds.all}',),
                        const Spacer(),
                        AirQuality(option: 'Humidity', value: '${weatherProvider.weatherData!.main.humidity}%',),
                        const Spacer(),
                        AirQuality(option: 'Wind', value: '${weatherProvider.weatherData!.wind.speed}kmh',)
                      ],
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                    height: 400,
                    width: 350,
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(15),
                      border: Border.all(
                        color: Colors.white.withOpacity(0.2),
                      ),
                    ),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(15),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.2),
                              borderRadius: BorderRadius.circular(15),
                              border: Border.all(
                                color: Colors.white.withOpacity(0.2),
                              ),
                            ),
                            child: ListView.builder(
                              itemCount: weatherProvider.weatherForecastList.length,
                              itemBuilder: (context, index) {
                                dailyWeatherData weatherData = weatherProvider.weatherForecastList[index];
                                // Calculate the date for each item
                                DateTime date = DateTime.now().add(Duration(days: index));

                                // Pass both weatherData and date to ForecastCardItem
                                return ForecastCardItem(weatherData: weatherData, date: date);
                              },
                            ),

                          ),
                        )
                    )
                )
              ],
            ),
          ),
        );
      }
      ),
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

class LatLng {
  final double latitude;
  final double longitude;

  LatLng(this.latitude, this.longitude);
}

