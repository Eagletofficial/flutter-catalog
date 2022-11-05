// import 'package:flutter/material.dart';
// import 'package:flutter_catalog/Calculator.dart';

// import 'package:flutter_catalog/nested_navigation.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: Calculator(),
//     );
//   }
// }


import 'package:flutter/material.dart';
import 'package:flutter_catalog/Calculator.dart';



void main() {
  runApp(const Provider());
}

class Provider extends StatelessWidget {
  const Provider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: const Calculator(),
    );
  }
}
