import 'package:clima/views/location_screen.dart';
import 'package:flutter/material.dart';
import 'package:clima/views/loading_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        backgroundColor: Color(0xFF352748),
      ),
      home: LoadingScreen(),
    );
  }
}
