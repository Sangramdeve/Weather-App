import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:weather_app/screens/weather_screen.dart';

import '../constants.dart';

class OnbordingScreen extends StatefulWidget {
  const OnbordingScreen({super.key});

  @override
  State<OnbordingScreen> createState() => _OnbordingScreenState();
}

class _OnbordingScreenState extends State<OnbordingScreen> {
  void initState() {
    super.initState();
    _checkFirstTimeUser();
  }

  Future<void> _checkFirstTimeUser() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool isFirstTime = prefs.getBool('isFirstTime') ?? true;

    if (!isFirstTime) {
      // If not first time, navigate to WeatherScreen
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const WeatherScreen()));
    }
  }

  void _navigateToWeatherScreen() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isFirstTime', false); // Set the flag as false

    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => const WeatherScreen()));
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
              right: -60,
              child: Container(
                height: 130,
                width: 130,
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
                height: 350,
                width: 350,
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
              top: -20,
              right: -200,
              child: Container(
                height: 550,
                width: 550,
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
              top: -90,
              right: -290,
              child: Container(
                height: 750,
                width: 750,
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
              top: 86,
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
                height: 250,
                width: 250,
                decoration: BoxDecoration(
                    color: cloudColor,
                    shape: BoxShape.circle
                ),
              ),
            ),
            Positioned(
              bottom: 300,
              right: 130,
              child: Container(
                height: 200,
                width: 200,
                decoration: BoxDecoration(
                    color: cloudColor,
                    shape: BoxShape.circle
                ),
              ),
            ),
            Positioned(
              bottom: 300,
              right: 0,
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