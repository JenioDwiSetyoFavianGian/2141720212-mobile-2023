import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: const EdgeInsets.all(
        32,
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.only(
                    bottom: 8,
                  ),
                  child: const Text(
                    'Wisata Pantai Balaikambang',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Balaikambang, Malang, Indonesia',
                  style: TextStyle(
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ),
          const Icon(
            Icons.star,
            color: Colors.red,
          ),
          const Text(
            "41",
          ),
        ],
      ),
    );

    Column buildButtonColumn(Color color, IconData icon, String label) {
      return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: color),
          Container(
            margin: const EdgeInsets.only(top: 8),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w400,
                color: color,
              ),
            ),
          ),
        ],
      );
    }

    Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        buildButtonColumn(color, Icons.call, 'CALL'),
        buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Pantai Balekambang adalah sebuah pantai di pesisir selatan yang terletak di tepi Samudra Indonesia '
        'secara administratif masuk wilayah Dusun Sumber Jambe, Desa Srigonco, Kecamatan Bantur, Kabupaten Malang, '
        'Jawa Timur dan merupakan salah satu wisata di Kabupaten Malang sejak 1985 hingga kini. '
        'Daya tarik Balekambang utamanya tentu panorama alam, gelombang ombak yang memanjang hampir dua kilometer, '
        'serta hamparan pasir nan luas.',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: "Flutter layout: Jenio Dwi Setyo Favian Gian (2141720212)",
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            "Jenio Dwi Setyo Favian Gian (2141720212)",
          ),
        ),
        body: Column(
          children: [
            Image.asset(
              'images/balaikambang.jpg',
              width: 600,
              height: 240,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,
          ],
        ),
      ),
    );
  }
}