import 'package:flutter/material.dart';

class MyTextWidget extends StatelessWidget {
  const MyTextWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Jenio Dwi Setyo Favian Gian, PEMROGRAMAN MOBILE',
      style: TextStyle(
        color: Colors.blue,
        fontSize: 14,
        fontWeight: FontWeight.bold,
      ),
      textAlign: TextAlign.center,
    );
  }
}
