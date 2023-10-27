import 'package:flutter/material.dart';

class RatingStarsWidget extends StatelessWidget {
  const RatingStarsWidget({
    super.key,
    required this.rating,
    required this.size,
  });

  final int rating;
  final double size;

  @override
  Widget build(BuildContext context) {
    const ratingMax = 5;
    return Row(
      children: [
        for (var i = 0; i < ratingMax; i++)
          (i < rating)
              ? Icon(
                  Icons.star,
                  color: Colors.black,
                  size: size,
                )
              : Icon(
                  Icons.star,
                  color: Colors.black26,
                  size: size,
                ),
      ],
    );
  }
}
