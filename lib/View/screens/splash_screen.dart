import 'dart:async';

import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:lottie/lottie.dart';
import 'package:weather_app/Routes/routes_name.dart';



class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    _determineUserCurrentPosition();
    super.initState();
  }

  Future<void> _determineUserCurrentPosition() async {
    LocationPermission locationPermission;
    bool isLocationServiceEnabled = await Geolocator.isLocationServiceEnabled();

    if (!isLocationServiceEnabled) {
      // Location services are not enabled
      debugPrint("User hasn't enabled location services");
    }

    locationPermission = await Geolocator.checkPermission();

    if (locationPermission == LocationPermission.denied) {
      // Request location permission
      locationPermission = await Geolocator.requestPermission();
      if (locationPermission == LocationPermission.denied) {
        debugPrint("User denied location permission");
        // Optionally show a dialog or prompt to request location permission
        return;
      }
    }

    if (locationPermission == LocationPermission.deniedForever) {
      // Permissions are denied forever
      debugPrint("User denied location permission forever");
      // Optionally show a dialog or prompt to explain why the permission is needed
      return;
    }

    // If we reach here, location services are enabled and permissions are granted
    // Perform your action, e.g., navigate to another screen
    await Geolocator.getCurrentPosition();
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, RoutesName.onBoardingScreen);

    });
  }



  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;
    return  Scaffold(
      body: Stack(
        children: [
          Positioned(
            child: Lottie.asset("assets/Animation - 1719630577744.json",
            height: screenHeight,
            width: screenWidth,
          ),),
          Positioned(
            top: -150,
            child: Lottie.asset("assets/Animation - 1719630791207.json",
              height: screenHeight,
              width: screenWidth,
            ),)
        ],
      ),
    );
  }
}
