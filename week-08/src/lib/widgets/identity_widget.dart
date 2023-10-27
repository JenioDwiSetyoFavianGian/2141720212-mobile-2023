import 'package:flutter/material.dart';

class IdentityWidget extends StatelessWidget {
  const IdentityWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black,
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: const Text(
          "Jenio Dwi Setyo Favian Gian (2141720212)",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.white,
          ),
        ));
  }
}
