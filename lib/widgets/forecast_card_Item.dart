import 'package:flutter/material.dart';
import 'package:weather_app/Model/daily_weather.dart';
import 'package:weather_app/constants.dart';


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

    String iconUrl = 'https://openweathermap.org/img/wn/$weatherIcon.png';


    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10,vertical: 5),
      child: Row(
        children: [
          Container(
            width: 70.0,
            height: 70.0,
            decoration: BoxDecoration(
              color: Colors.grey.withOpacity(.5),
              shape: BoxShape.circle,
            ),
            child: Image.network(
              iconUrl,
              fit: BoxFit.cover,
            ),
          ),
          Spacer(),
          Container(
            height: 60,
            width: 250,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              border: Border.all(
                  color: Colors.white.withOpacity(0.5),
                  width: 1.5),
            ),
            child: Row(
              children: [
                Spacer(),
                Text('${tempInCelsius.toStringAsFixed(2)}°C', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                Spacer(),
                Text(_getFormattedDate(date), style: TextStyle(fontSize: 20,)),
                Spacer(),
              ],
            ),
          )
        ],
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
