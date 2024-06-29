import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/Model/daily_weather.dart';

import '../Model/weather_model.dart';
import '../Provider/WeatherProvider.dart';


class ForecastCardItem extends StatelessWidget {
  final dailyWeatherData weatherData;
  final DateTime date;

  const ForecastCardItem({
    super.key,
    required this.weatherData,
    required this.date,
  });


  @override
  Widget build(BuildContext context) {
    double tempInKelvin = weatherData.main.temp;
    double tempInCelsius = tempInKelvin - 273.15;
    String weatherIcon = weatherData.weather[0].icon;

    // Construct the complete URL for the weather icon
    String iconUrl = 'https://openweathermap.org/img/wn/$weatherIcon.png';


    return Row(
      children: [
        Image.network(iconUrl), // Use iconUrl here
        Text('${tempInCelsius.toStringAsFixed(2)} °C', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
        Text(_getFormattedDate(date), style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
      ],
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
