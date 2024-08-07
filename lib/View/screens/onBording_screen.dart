import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app/View//screens/current_weather.dart';
import 'package:weather_app/routes/routes_name.dart';

import '../../constants.dart';



class OnbordingScreen extends StatefulWidget {
  const OnbordingScreen({super.key});

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {

  @override
  void initState() {
    super.initState();
    _checkFirstTimeUser();
  }

  Future<void> _checkFirstTimeUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isFirstTime = prefs.getBool('isFirstTime') ?? true;

    if (!isFirstTime) {
      Navigator.pushReplacementNamed(context, RoutesName.weatherScreen);
    }
  }

  void _navigateToWeatherScreen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFirstTime', false);

    Navigator.pushReplacementNamed(context, RoutesName.weatherScreen);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Stack(
          children: [
            Positioned(
              top: 180,
              right: -50,
              child: Container(
                height: 120,
                width: 120,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.white,
                        width: 1.4
                    ),
                    shape: BoxShape.circle
                ),
              ),
            ),
            Positioned(
              top: 80,
              right: -150,
              child: Container(
                height: 330,
                width: 330,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.white,
                        width: 1.4
                    ),
                    shape: BoxShape.circle
                ),
              ),
            ),
            Positioned(
              top: -10,
              right: -205,
              child: Container(
                height: 500,
                width: 500,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.white,
                        width: 1.4
                    ),
                    shape: BoxShape.circle
                ),
              ),
            ),
            Positioned(
              top: -100,
              right: -260,
              child: Container(
                height: 700,
                width: 700,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: Colors.white,
                        width: 1.4
                    ),
                    shape: BoxShape.circle
                ),
              ),
            ),
            Positioned(
              top: 80,
              left: -60,
              child: Container(
                height: 130,
                width: 130,
                decoration: const BoxDecoration(
                    color: Colors.amber,
                    shape: BoxShape.circle
                ),
              ),
            ),
            Positioned(
              top: 250,
              right: -60,
              child: Container(
                height: 230,
                width: 230,
                decoration: BoxDecoration(
                    color: cloudColor,
                    shape: BoxShape.circle
                ),
              ),
            ),
            Positioned(
              bottom: 320,
              right: 110,
              child: Container(
                height: 190,
                width: 190,
                decoration: BoxDecoration(
                    color: cloudColor,
                    shape: BoxShape.circle
                ),
              ),
            ),
            Positioned(
              bottom: 320,
              right: -30,
              child: Container(
                height: 180,
                width: 240,
                color: cloudColor,
              ),
            ),
            const Positioned(
              bottom: 150,
              child: Padding(
                padding: EdgeInsets.only(bottom: 40,left: 15,right: 15),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Never get caught in \nrain again',textAlign: TextAlign.left,style: TextStyle(
                      fontWeight: FontWeight.bold,fontSize: 40,),
                    ),
                    Text(
                      'Stay ahead of the weather with our \naccurate forecasts',
                      style: TextStyle(fontSize: 17
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 10,
              child: Padding(
                padding: const EdgeInsets.only(top: 30,bottom: 40,left: 10,right: 10),
                child: Container(
                    width: 370,
                    decoration: BoxDecoration(
                      color: buttonColor,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: TextButton(
                      onPressed: () {
                        _navigateToWeatherScreen();
                      },
                      child: const Text('Get started',style: TextStyle(
                          fontSize: 17,
                          color: Colors.white
                      ),),
                    )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
