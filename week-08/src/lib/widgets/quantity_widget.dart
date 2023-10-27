import 'package:flutter/material.dart';

class QuantityWidget extends StatefulWidget {
  const QuantityWidget({
    super.key,
  });

  @override
  State<QuantityWidget> createState() => _QuantityWidgetState();
}

class _QuantityWidgetState extends State<QuantityWidget> {
  int _quantity = 1;

  void _addQuantity() {
    setState(() {
      _quantity++;
    });
  }

  void _reduceQuantity() {
    if (_quantity > 1) {
      setState(() {
        _quantity--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Quantity'),
        const SizedBox(height: 7),
        Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            _quantityButtonWidget(Icons.remove_rounded, _reduceQuantity),
            _quantityDisplayWidget(),
            _quantityButtonWidget(Icons.add, _addQuantity),
          ],
        ),
      ],
    );
  }

  Widget _quantityButtonWidget(IconData icon, Function onPressed) {
    return Ink(
      height: 40,
      width: 40,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(onPressed == _reduceQuantity ? 10 : 0),
          bottomLeft: Radius.circular(onPressed == _reduceQuantity ? 10 : 0),
          topRight: Radius.circular(onPressed == _addQuantity ? 10 : 0),
          bottomRight: Radius.circular(onPressed == _addQuantity ? 10 : 0),
        ),
      ),
      child: IconButton(
        onPressed: () => onPressed(),
        icon: Icon(icon),
        iconSize: 22,
        color: Colors.white,
      ),
    );
  }

  Widget _quantityDisplayWidget() {
    return Container(
      alignment: Alignment.center,
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        border: Border.all(
          width: 1,
        ),
      ),
      child: Text(
        _quantity.toString(),
        style: const TextStyle(fontSize: 22),
      ),
    );
  }
}
