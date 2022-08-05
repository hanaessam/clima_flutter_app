import 'package:clima/utilities/constants.dart';
import 'package:flutter/material.dart';

class StatusCard extends StatelessWidget {
  String text;
  StatusCard(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(5.0),
      padding: EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: Color(0xFF352748).withOpacity(.5),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: kStatusTextStyle,
      ),
    );
  }
}