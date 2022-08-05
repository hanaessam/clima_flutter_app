import 'package:flutter/material.dart';

import '../utilities/constants.dart';

class WeatherCard extends StatelessWidget {
  String text;
  WeatherCard(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:EdgeInsets.all(15.0) ,
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.25),
        borderRadius: BorderRadius.circular(50.0),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: kMessageTextStyle,
      ),
    );
  }
}