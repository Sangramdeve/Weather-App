
import 'package:flutter/material.dart';

class AirQuality extends StatelessWidget {
  final String option;
  final String value;
  const AirQuality({super.key, required this.option, required this.value});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Opacity(
          opacity: 0.5,
            child: Icon(Icons.sunny,size: 17,)),

        Opacity(
          opacity: 0.7,
            child: Text(option)),

        Text(value,style: TextStyle(
          fontWeight: FontWeight.bold,fontSize: 20
        ),),

      ],
    );
  }
}
