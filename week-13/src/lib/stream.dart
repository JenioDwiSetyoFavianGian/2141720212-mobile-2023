import 'package:flutter/material.dart';
import 'dart:async';

class ColorStream {
  final List<Color> colors = [
    Colors.blueGrey,
    Colors.lightGreen,
    Colors.deepOrange,
    Colors.lightBlue,
    Colors.teal
  ];
  Stream<Color> getColors() async* {
    yield* Stream.periodic(
        //digunakan dalam konteks generator
        const Duration(seconds: 1), (int t) {
      int index = t % colors.length;
      return colors[index];
    });
  }
}

class NumberStream {
  final StreamController<int> controller = StreamController<int>();
  void addNumberToSink(int newNumber) {
    controller.sink.add(newNumber);
  }

  close() {
    controller.close();
  }
}
