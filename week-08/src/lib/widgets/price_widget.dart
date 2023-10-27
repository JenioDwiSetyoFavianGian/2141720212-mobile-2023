import 'package:flutter/material.dart';

class PriceWidget extends StatelessWidget {
  const PriceWidget({
    super.key,
    required this.price,
    required this.size,
  });

  final String price;
  final double size;

  @override
  Widget build(BuildContext context) {
    return Text(
      'Rp. ${price.toString()}',
      style: TextStyle(
        fontSize: size,
        fontStyle: FontStyle.italic,
      ),
    );
  }
}
