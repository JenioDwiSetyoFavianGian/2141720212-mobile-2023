import 'package:flutter/material.dart';

class BuyNowButtonWidget extends StatelessWidget {
  const BuyNowButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      margin: const EdgeInsets.symmetric(horizontal: 20),
      padding: const EdgeInsets.symmetric(vertical: 14),
      decoration: const BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: Colors.black38))),
      child: ElevatedButton(
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(
            Colors.black,
          ),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(
                  10,
                ),
              ),
            ),
          ),
        ),
        onPressed: () {},
        child: const Text(
          'Buy Now',
          style: TextStyle(
            color: Colors.white,
            fontSize: 22,
          ),
        ),
      ),
    );
  }
}
