import 'package:flutter/material.dart';

class MyDatePickerButton extends StatelessWidget {
  const MyDatePickerButton({
    super.key,
    required this.selectedDate,
    required this.onPressed,
  });

  final DateTime selectedDate;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () => {
        onPressed(context),
        // ignore: avoid_print
        print(selectedDate.day + selectedDate.month + selectedDate.year)
      },
      child: const Text('Pilih Tanggal'),
    );
  }
}
