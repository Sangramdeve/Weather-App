import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app/config.dart';

import '../Model/weather_model.dart';

class WeatherService {
  final String apiKey = Config.weatherApiKey;

  Future<Map<String, dynamic>> fetchDailyWeather(double lat, double lon) async {
    final url = 'http://api.openweathermap.org/data/2.5/forecast?lat=$lat&lon=$lon&appid=$apiKey';

    try {
      final response = await http.get(Uri.parse(url));

      if (response.statusCode == 200) {
        final data = json.decode(response.body);
        return data;
      } else {
        throw Exception('Failed to load weather data');
      }
    } catch (e) {
      print('Error fetching weather data: $e');
      return {};
    }
  }


  Future<http.Response> fetchWeather(double lat, double lon) async {
    final url = 'https://api.openweathermap.org/data/2.5/weather?lat=$lat&lon=$lon&appid=$apiKey';
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return response;
    } else {
      throw Exception('Failed to load weather data');
    }
  }
}
