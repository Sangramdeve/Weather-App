import 'package:flutter/material.dart';

class InternetErrorWidget extends StatelessWidget {
 // final VoidCallback onPress;
  final String message;
  const InternetErrorWidget ({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    double h = MediaQuery.of(context).size.height;
    double w = MediaQuery.of(context).size.width;
    return   SizedBox(
      height: h,
      width: w,
      child: Column(
        children: [
          SizedBox(
            height: h *.15,
          ),
          const Icon(
              Icons.cloud_off_sharp,
            size: 50,
            color: Colors.red,
          ),
          Padding(
              padding: const EdgeInsets.only(top: 30),
            child: Center(
              child: Text('We re unable to show result.\nplease check your $message',
                style: const TextStyle(fontWeight: FontWeight.w500,fontSize: 20),
              ),
            ),

          ),

        ],
      ),
    );
  }
}

