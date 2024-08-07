
import 'package:flutter/material.dart';
import 'package:weather_app/Model/daily_weather_forecast_model/forecast_json.dart';
import 'package:weather_app/config/api_urls.dart';

import '../Model/current_weather_model/json_model.dart';
import '../backend_utils/api_service/network_services_api.dart';
import '../config/config.dart';

class WeatherService{

  final api = NetworkServicesApi();
  final String apiKey = Config.weatherApiKey;

  Future<WeatherData> currentWeatherApi(double lat, double lon) async{
    try{
      final url = '${ApiUrls.currentWeatherUrl}?lat=$lat&lon=$lon&appid=$apiKey';
      final response = await api.getApi(url);
      debugPrint('object, $response');
      return WeatherData.fromJson(response);
    }catch(e){
      throw Exception('Failed to load weather data');
    }
  }

  Future<WeatherForecast> DailyForcastApi(double lat ,double lon) async{
    try{
      final url = '${ApiUrls.weatherForecastUrl}?lat=$lat&lon=$lon&appid=$apiKey';
      final response = await api.getApi(url);
      debugPrint('DailyForecastApi, $response');
      return WeatherForecast.fromJson(response);
    }catch(e){
      throw Exception('Failed to load weather data');
    }
  }
}