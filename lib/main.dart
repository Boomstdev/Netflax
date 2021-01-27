import 'package:flutter/material.dart';
import 'package:netfake/screen/Loading_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: loadingScreen(),
    );
  }
}



