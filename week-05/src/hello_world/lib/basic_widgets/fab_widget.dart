import 'package:flutter/material.dart';

class MyFABWidget extends StatelessWidget {
  const MyFABWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        // Add your onPressed code here!
      },
      backgroundColor: Colors.blue,
      child: const Icon(Icons.thumb_up),
    );
  }
}

class IncrementFABWidget extends StatelessWidget {
  const IncrementFABWidget({
    Key? key,
    required this.onPressed,
  }) : super(key: key);

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      backgroundColor: Colors.red,
      tooltip: 'INCREMENT COUNTER',
      child: const Icon(Icons.add),
    );
  }
}
