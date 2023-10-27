import 'package:flutter/material.dart';

class ImageItemWidget extends StatelessWidget {
  const ImageItemWidget({
    super.key,
    required this.image,
    this.hero = false,
  });

  final String image;
  final bool hero;

  @override
  Widget build(BuildContext context) {
    if (hero) {
      return GestureDetector(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return HeroImageItemWidget(
              image: image,
            );
          }));
        },
        child: Expanded(
          child: Image.asset('assets/images/$image'),
        ),
      );
    }
    return Expanded(
      child: Image.asset('assets/images/$image'),
    );
  }
}

class HeroImageItemWidget extends StatelessWidget {
  const HeroImageItemWidget({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        alignment: Alignment.center,
        children: [
          Positioned(
            left: 15,
            top: 40,
            child: GestureDetector(
              onTap: () => Navigator.pop(context),
              child: const Icon(Icons.close),
            ),
          ),
          Center(
            child: Hero(
              tag: 'image $image',
              child: Image.asset('assets/images/$image'),
            ),
          ),
        ],
      ),
    );
  }
}
