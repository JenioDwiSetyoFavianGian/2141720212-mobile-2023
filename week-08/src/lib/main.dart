import 'package:flutter/material.dart';

import 'pages/home_page.dart';
// import 'pages/item_page.dart';

void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        '/item': (context) => const HomePage(),
      },
    ),
  );
}
    