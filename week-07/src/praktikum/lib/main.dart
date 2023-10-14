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
                    'Wisata Telaga Ngebel',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Text(
                  'Ngebel, Ponorogo, Indonesia',
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
        'Telaga Ngebel adalah objek wisata alam yang terletak di Kabupaten '
        'Ponorogo, Jawa Timur, yang mempesona dengan pemandangan danau alami '
        'yang dikelilingi oleh hutan hijau. Pengunjung dapat menikmati '
        'berjalan-jalan santai, memancing, atau berperahu sambil meresapi '
        'ketenangan alam. Selain keindahan alamnya, tempat ini juga memiliki'
        ' nilai sejarah dan budaya yang membuatnya menjadi destinasi wisata '
        'yang menarik bagi semua jenis pengunjung.',
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
              'images/telaga_ngebel.jpg',
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
