import 'package:flutter/material.dart';
import 'package:weather_app/Provider/WeatherProvider.dart';
import 'package:weather_app/screens/splash_screen.dart';
import 'package:provider/provider.dart';

import 'constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<WeatherProvider>(create: (context) => WeatherProvider(),),
      ],
      child:  MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home:  const SplashScreen(),
      ),
    );
  }
}
