import 'package:flutter/material.dart';

class InputWidget extends StatelessWidget {
  const InputWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TextField(
      obscureText: false,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: 'NAMA',
      ),
    );
  }
}
