import 'package:flutter/material.dart';

class MyLayout extends StatelessWidget {
  const MyLayout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          child: const Text('SHOW ALERT'),
          onPressed: () {
            showAlertDialog(context);
          },
        ),
      ),
    );
  }
}

class MyAlertDialog extends StatelessWidget {
  const MyAlertDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // set up the button
    Widget okButton = TextButton(
      child: const Text("OK"),
      onPressed: () {
        Navigator.pop(context);
      },
    );

    // set up the AlertDialog
    AlertDialog alert = AlertDialog(
      title: const Text("My TITTLE"),
      content: const Text("THIS IS MY MASSAGE."),
      actions: [
        okButton,
      ],
    );

    return alert;
  }
}

showAlertDialog(BuildContext context) {
  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return const MyAlertDialog();
    },
  );
}
