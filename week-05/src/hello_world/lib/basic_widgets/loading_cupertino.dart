import 'package:flutter/cupertino.dart';

class MyCupertinoButton extends StatelessWidget {
  const MyCupertinoButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      child: Column(
        children: <Widget>[
          CupertinoButton.filled(
            child: const Text("Contoh button"),
            onPressed: () {},
          ),
          const SizedBox(
            height: 30,
          ),
          const CupertinoActivityIndicator(
            animating: false,
            radius: 30,
          ),
        ],
      ),
    );
  }
}
