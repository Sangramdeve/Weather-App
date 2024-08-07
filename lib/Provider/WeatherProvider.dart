import 'package:flutter/material.dart';

import '../Model/current_weather_model/json_model.dart';
import '../Model/daily_weather_forecast_model/forecast_json.dart';



class WeatherProvider extends ChangeNotifier {
  WeatherData? _weatherData;
  List<WeatherForecast> _weatherForecastList = [];

  WeatherData? get weatherData => _weatherData;
  List<WeatherForecast> get weatherForecastList => _weatherForecastList;

  set weatherData(WeatherData? weatherData) {
    _weatherData = weatherData;
    notifyListeners(); // Notify listeners of any changes related to weatherData
  }

  void updateWeatherForecastList(List<WeatherForecast> newData) {
    _weatherForecastList = newData;
    notifyListeners(); // Notify listeners of any changes related to weatherForecastList
  }
}
