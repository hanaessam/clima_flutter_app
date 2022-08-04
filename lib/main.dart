import 'package:flutter/material.dart';
import 'package:clima/screens/loading_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        // iconTheme: const IconThemeData(color: Colors.white),
        // buttonTheme: const ButtonThemeData(buttonColor: Colors.white,),
      ),
      home: LoadingScreen(),
    );
  }
}
