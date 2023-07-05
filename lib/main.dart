import 'package:flutter/material.dart';
import 'package:test_design/constants/design.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter Demo Home Page'),
        ),
        body: const Center(
          child: Text(
            'American Wild Horse!!!!',
            style: TextStyle(
              fontFamily: "Graphika",
              fontWeight: FontWeight.w700,
              color: DesignConstants.awhcBlue,
            ),
          ),
        ),
      ),
    );
  }
}
