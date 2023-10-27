import 'package:flutter/material.dart';

class NameWidget extends StatelessWidget {
  const NameWidget({
    super.key,
    required this.name,
    required this.size,
  });

  final String name;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      textAlign: TextAlign.start,
      style: TextStyle(
        fontSize: size,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
