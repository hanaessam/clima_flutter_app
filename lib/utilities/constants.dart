import 'package:flutter/material.dart';

const kTempTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 100.0,
);

const kMessageTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 40.0,
);

const kStatusTextStyle = TextStyle(
  fontFamily: 'Spartan MB',
  fontSize: 14.0,
);

const kButtonTextStyle = TextStyle(
  fontSize: 30.0,
  fontFamily: 'Spartan MB',
  color: Colors.white
);

const kConditionTextStyle = TextStyle(
  fontSize: 100.0,
);

const kTextFieldInputDecoration = InputDecoration(
  filled: true,
  fillColor: Colors.white60,
  icon: Icon(
    Icons.location_on,
    color: Colors.white60,
    size: 35.0,
  ),
  hintText: 'Enter City Name',
  hintStyle: TextStyle(
    color: Color(0xFF352748),
  ),
  border: OutlineInputBorder(
    borderRadius: BorderRadius.all(
      Radius.circular(30.0),
    ),
    borderSide: BorderSide.none,
  ),
);