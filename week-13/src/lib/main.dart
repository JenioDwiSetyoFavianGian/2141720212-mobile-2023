import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';

import 'stream.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vian Stream',
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const StreamHomePage(),
    );
  }
}

class StreamHomePage extends StatefulWidget {
  const StreamHomePage({super.key});

  @override
  State<StreamHomePage> createState() => _StreamHomePageState();
}

class _StreamHomePageState extends State<StreamHomePage> {
  Color bgColor = Colors.blueGrey;
  late ColorStream colorStream;
  int lastNumber = 0;
  late StreamController numberSteamController;
  late NumberStream numberStream;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Stream Vian'),
        ),
        body: SizedBox(
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(lastNumber.toString()),
              ElevatedButton(
                onPressed: () => addRandomNumber(),
                child: const Text('New Random Number'),
              )
            ],
          ),
        ));
  }

  @override
  void initState() {
    super.initState();

    numberStream = NumberStream();
    numberSteamController = numberStream.controller;
    Stream stream = numberSteamController.stream;
    stream.listen((event) {
      setState(() {
        lastNumber = event;
      });
    });
  }

  void changeColor() async {
    // await for (var eventColor in colorStream.getColors()) {
    //   setState(() {
    //     bgColor = eventColor;
    //   });
    // }

    colorStream.getColors().listen((event) {
      setState(() {
        bgColor = event;
      });
    });
  }

  void addRandomNumber() {
    Random random = Random();
    int myNum = random.nextInt(10);
    numberStream.addNumberToSink(myNum);
  }

  @override
  void dispose() {
    super.dispose();

    numberSteamController.close();
  }
}
// import 'dart:async';
// import 'dart:math';

// import 'package:flutter/material.dart';

// import 'stream.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Vian Stream',
//       theme: ThemeData(
//         primarySwatch: Colors.grey,
//       ),
//       home: const StreamHomePage(),
//     );
//   }
// }

// class StreamHomePage extends StatefulWidget {
//   const StreamHomePage({super.key});

//   @override
//   State<StreamHomePage> createState() => _StreamHomePageState();
// }

// class _StreamHomePageState extends State<StreamHomePage> {
//   Color bgColor = Colors.blueGrey;
//   late ColorStream colorStream;
//   int lastNumber = 0;
//   late StreamController numberStreamController;
//   late NumberStream numberStream;
//   @override
//   Widget build(BuildContext context) {
//          return Scaffold(
//       appBar: AppBar(
//         title: const Text('Vian Stream'),
//       ),
//       body: SizedBox(
//         width: double.infinity,
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//           crossAxisAlignment: CrossAxisAlignment.center,
//           children: [
//             Text(lastNumber.toString()),
//             ElevatedButton(
//               onPressed: () => addRandomNumber(),
//               child: Text('New Random Number'),
//             )
//           ],
//         ),
//       ));
//   }
// // void changeColor() async {
// //   colorStream.getColors().listen((eventColor) {
// //     setState(() {
// //       bgColor = eventColor;
// //     });
// //   });
// // }
// void dispose() {
//   numberStreamController.close();
//   super.dispose();
// }
// @override
//   void initState() {
//     super.initState();

//     numberStream = NumberStream();
//     numberStreamController = numberStream.controller;
//     Stream stream = numberStreamController.stream;
//     stream.listen((event) {
//       setState(() {
//         lastNumber = event;
//       });
//     });
//   }
// }
// void addRandomNumber() {
//     Random random = Random();
//     int myNum = random.nextInt(10);
//     NumberStream.addNumberToSink(myNum);
//   }

