import 'package:flutter/material.dart';
import 'package:weather_app/View/screens/onBording_screen.dart';
import 'package:weather_app/routes/routes_name.dart';

import '../View/screens/current_weather.dart';
import '../View/screens/splash_screen.dart';

class Routes {

  static Route<dynamic> generateRoute(RouteSettings setting){

    switch(setting.name){
      case RoutesName.splashScreen:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case RoutesName.onBoardingScreen:
        return MaterialPageRoute(builder: (context) => const OnbordingScreen());
      case RoutesName.weatherScreen:
        return MaterialPageRoute(builder: (context) =>  WeatherScreen());
      default:
        return MaterialPageRoute(builder: (context){
          return const Scaffold(
            body: Center(
              child: Text('no route'),
            ),
          );
        });
    }


  }
}