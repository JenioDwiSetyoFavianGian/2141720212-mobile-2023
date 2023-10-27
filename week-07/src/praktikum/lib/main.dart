import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
  padding: const EdgeInsets.all(32),
  child: Row(
    children: [
      Expanded(
        /* soal 1*/
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: [
            /* soal 2*/
            Container(
              padding: const EdgeInsets.only(bottom: 8),
              child: const Text(
                'Wisata Pantai di Malang',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text(
              'Bantur, Malang, Indonesia',
              style: TextStyle(color: Colors.grey),
            ),
          ],
        ),
      ),
      /* soal 3*/
      const Icon(
       Icons.star,
        color: Color.fromARGB(255, 255, 0, 0),
      ),
      const Text('41'),
    ],
  ),
);

Color color = Theme.of(context).primaryColor;

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(color, Icons.call, 'CALL'),
        _buildButtonColumn(color, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(color, Icons.share, 'SHARE'),
      ],
    );

    Widget textSection = Container(
      padding: const EdgeInsets.all(32),
      child: const Text(
        'Gunung Panderman adalah sebuah gunung di Kota Batu, Jawa Timur, Indonesia, dengan puncaknya Basundara yang berketinggian 2.045 mdpl. Josafat Pratama Susilo - 2141720031',
        softWrap: true,
      ),
    );

    return MaterialApp(
      title: 'Flutter layout: Nama dan NIM Anda',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: ListView(children: [
          Image.asset(
            'images/balaikambang.jpeg',
            width: 600,
            height: 240,
            fit: BoxFit.cover,
          ),
          titleSection,
          buttonSection,
          textSection
        ]),
      ),
    );
  }

  Column _buildButtonColumn(Color color, IconData icon, String label) {
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
}
// Column buildButtonColumn(Color color, IconData icon, String label) {
//       return Column(
//         mainAxisSize: MainAxisSize.min,
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Icon(icon, color: color),
//           Container(
//             margin: const EdgeInsets.only(top: 8),
//             child: Text(
//               label,
//               style: TextStyle(
//                 fontSize: 12,
//                 fontWeight: FontWeight.w400,
//                 color: color,
//               ),
//             ),
//           ),
//         ],
//       );
//     }
//     return MaterialApp(
//       title: "Flutter layout: Jenio Dwi Setyo Favian Gian (2141720212)",
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text(
//             "Jenio Dwi Setyo Favian Gian (2141720212)",
//           ),
//         ),
//         body: Column(
//           children: [
//             Image.asset(
//               'images\balaikambang.jpg',
//               width: 600,
//               height: 240,
//               fit: BoxFit.cover,
//             ),
//             titleSection,
//           ],
//         ),
//       ),
//     );
//   }
// }
