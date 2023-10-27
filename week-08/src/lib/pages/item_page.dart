import 'package:flutter/material.dart';
import 'package:src/widgets/name_widget.dart';
import 'package:src/widgets/price_widget.dart';
import 'package:src/widgets/rating_stars_widget.dart';
import 'package:src/widgets/stock_widget.dart';

import '../models/item.dart';
import '../widgets/buy_now_button_widget.dart';
import '../widgets/image_item_widget.dart';
import '../widgets/quantity_widget.dart';

class ItemPage extends StatelessWidget {
  const ItemPage({super.key});

  @override
  Widget build(BuildContext context) {
    final itemArgs = ModalRoute.of(context)!.settings.arguments as Item;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'PIAN STORE.',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            letterSpacing: 1.1,
          ),
        ),
      ),
      bottomNavigationBar: const BuyNowButtonWidget(),
      body: Container(
        margin: const EdgeInsets.all(
          10,
        ),
        child: ListView(
          children: [
            ImageItemWidget(
              image: itemArgs.image,
              hero: true,
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(
                  10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    NameWidget(
                      name: itemArgs.name,
                      size: 26,
                    ),
                    RatingStarsWidget(
                      rating: itemArgs.rating,
                      size: 20,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        PriceWidget(
                          price: itemArgs.price,
                          size: 22,
                        ),
                        StockWidget(
                          stock: itemArgs.stock,
                          size: 20,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const QuantityWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
