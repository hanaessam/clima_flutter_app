import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconsRow extends StatelessWidget {
  const IconsRow({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(width: 30.0,),
        WeatherIcon(FontAwesomeIcons.droplet),
        SizedBox(width: 60.0,),
        WeatherIcon(FontAwesomeIcons.wind),
        SizedBox(width: 60.0,),
        WeatherIcon(FontAwesomeIcons.temperatureArrowUp),
        SizedBox(width: 30.0,),
        WeatherIcon(FontAwesomeIcons.temperatureArrowDown),
      ],
    );
  }
}


class WeatherIcon extends StatelessWidget {
  IconData icon;
  WeatherIcon(this.icon);

  @override
  Widget build(BuildContext context) {
    return Icon(
      icon,
      size: 50,
      color: Colors.white.withOpacity(.75),
    );
  }
}
