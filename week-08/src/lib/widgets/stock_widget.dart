import 'package:flutter/material.dart';

class StockWidget extends StatelessWidget {
  const StockWidget({
    super.key,
    required this.stock,
    required this.size,
  });

  final int stock;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Stock ',
          style: TextStyle(
            fontSize: size - 2,
          ),
        ),
        Text(
          stock.toString(),
          style: TextStyle(
            fontSize: size,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
