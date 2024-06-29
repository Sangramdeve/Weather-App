import 'package:flutter/material.dart';

import '../Model/daily_weather.dart';
import '../Model/weather_model.dart';

class WeatherProvider extends ChangeNotifier {
  WeatherData? _weatherData;
  List<dailyWeatherData> _weatherForecastList = [];

  WeatherData? get weatherData => _weatherData;
  List<dailyWeatherData> get weatherForecastList => _weatherForecastList;

  set weatherData(WeatherData? weatherData) {
    _weatherData = weatherData;
    notifyListeners(); // Notify listeners of any changes related to weatherData
  }

  void updateWeatherForecastList(List<dailyWeatherData> newData) {
    _weatherForecastList = newData;
    notifyListeners(); // Notify listeners of any changes related to weatherForecastList
  }
}
