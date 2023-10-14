import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        body: Center(
          child: Container(
            color: Colors.black26,
            child: const MyWidget(),
          ),
        ),
      ),
    );
  }
}

/* Row And Column */
// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Row(
//       mainAxisAlignment: MainAxisAlignment.spaceAround,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         BlueBox(),
//         BiggerBlueBox(),
//         BlueBox(),
//       ],
//     );
//   }
// }

/* Flexible */
// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Row(
//       children: [
//         BlueBox(),
//         Flexible(
//           fit: FlexFit.loose,
//           flex: 2,
//           child: BlueBox(),
//         ),
//         Flexible(
//           fit: FlexFit.loose,
//           flex: 1,
//           child: BlueBox(),
//         ),
//       ],
//     );
//   }
// }

/* Expanded */
// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Row(
//       children: [
//         BlueBox(),
//         Expanded(
//           child: BlueBox(),
//         ),
//         BlueBox(),
//       ],
//     );
//   }
// }

/* SizedBox */
// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Row(
//       mainAxisSize: MainAxisSize.max,
//       children: [
//         BlueBox(),
//         SizedBox(
//           width: 100,
//           height: 100,
//           child: BlueBox(),
//         ),
//         SizedBox(
//           width: 50,
//         ),
//         BlueBox(),
//       ],
//     );
//   }
// }

/* Spacer */
// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Row(
//       children: [
//         BlueBox(),
//         Spacer(flex: 1),
//         BlueBox(),
//         Spacer(flex: 1),
//         BlueBox(),
//       ],
//     );
//   }
// }

/* Teks */
// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.baseline,
//       textBaseline: TextBaseline.alphabetic,
//       children: [
//         Text(
//           'Hey!',
//           style: TextStyle(
//             fontSize: 30,
//             fontFamily: 'Futura',
//             color: Colors.blue,
//           ),
//         ),
//         Text(
//           'Hey!',
//           style: TextStyle(
//             fontSize: 50,
//             fontFamily: 'Futura',
//             color: Colors.green,
//           ),
//         ),
//         Text(
//           'Hey!',
//           style: TextStyle(
//             fontSize: 40,
//             fontFamily: 'Futura',
//             color: Colors.red,
//           ),
//         ),
//       ],
//     );
//   }
// }

/* Icon */
// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return const Row(
//       crossAxisAlignment: CrossAxisAlignment.center,
//       mainAxisAlignment: MainAxisAlignment.center,
//       textBaseline: TextBaseline.alphabetic,
//       children: [
//         Icon(
//           Icons.widgets,
//           size: 50,
//           color: Colors.blue,
//         ),
//         Icon(
//           Icons.widgets,
//           size: 50,
//           color: Colors.red,
//         ),
//         Icon(
//           Icons.widgets,
//           size: 50,
//           color: Colors.amber,
//         ),
//       ],
//     );
//   }
// }

/* Image */
// class MyWidget extends StatelessWidget {
//   const MyWidget({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       children: [
//         Expanded(
//           child: Image.network(
//             'https://raw.githubusercontent.com/flutter/website/main/examples/layout/sizing/images/pic1.jpg',
//           ),
//         ),
//         Expanded(
//           child: Image.network(
//             'https://raw.githubusercontent.com/flutter/website/main/examples/layout/sizing/images/pic2.jpg',
//           ),
//         ),
//         Expanded(
//           child: Image.network(
//             'https://raw.githubusercontent.com/flutter/website/main/examples/layout/sizing/images/pic3.jpg',
//           ),
//         ),
//       ],
//     );
//   }
// }

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 8,
      ),
      margin: const EdgeInsets.all(
        8,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(
          16,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Row(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Icon(Icons.account_circle, size: 50),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "Jenio Dwi Setyo Favian Gian",
                    style: Theme.of(context).textTheme.headlineSmall,
                  ),
                  const Text('Experienced App Developer'),
                ],
              ),
            ],
          ),
          const SizedBox(height: 8),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Ponorogo, East Java'),
              Text('0822-6449-6644'),
            ],
          ),
          const SizedBox(height: 16),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                Icons.accessibility,
              ),
              Icon(
                Icons.timer,
              ),
              Icon(
                Icons.phone_android,
              ),
              Icon(
                Icons.phone_iphone,
              ),
            ],
          ),
          const SizedBox(height: 16),
        ],
      ),
    );
  }
}

// class BlueBox extends StatelessWidget {
//   const BlueBox({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 50,
//       height: 50,
//       decoration: BoxDecoration(
//         color: Colors.blue,
//         border: Border.all(),
//       ),
//     );
//   }
// }
//
// class BiggerBlueBox extends StatelessWidget {
//   const BiggerBlueBox({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       width: 50,
//       height: 100,
//       decoration: BoxDecoration(
//         color: Colors.blue,
//         border: Border.all(),
//       ),
//     );
//   }
// }
