import 'package:clima/models/icons_row.dart';
import 'package:flutter/material.dart';
import 'package:clima/utilities/constants.dart';
import 'package:clima/models/weather.dart';
import '../models/status_card.dart';
import '../models/weather_card.dart';
import 'city_screen.dart';

class LocationScreen extends StatefulWidget {
  LocationScreen({this.locationWeather});

  final locationWeather;

  @override
  _LocationScreenState createState() => _LocationScreenState();
}

class _LocationScreenState extends State<LocationScreen> {
  WeatherModel weather = WeatherModel();
  late int temperature;
  late String weatherIcon;
  late String cityName;
  late String weatherMessage;
  var description;
  var windSpeed;
  var humidity;
  var temp_min;
  var temp_max;

  @override
  void initState() {
    super.initState();

    updateUI(widget.locationWeather);
  }

  void updateUI(dynamic weatherData) {
    setState(() {
      if (weatherData == null) {
        temperature = 0;
        weatherIcon = 'Error';
        weatherMessage = 'Unable to get weather data';
        cityName = '';
        return;
      }
      double temp = weatherData['main']['temp'];
      temperature = temp.toInt();
      var condition = weatherData['weather'][0]['id'];
      weatherIcon = weather.getWeatherIcon(condition);
      weatherMessage = weather.getMessage(temperature);
      cityName = weatherData['name'];
      description = weatherData['weather'][0]['description'];
      humidity = weatherData['main']['humidity'];
      windSpeed = weatherData['wind']['speed'];
      temp_min = weatherData['main']['temp_min'];
      temp_max = weatherData['main']['temp_max'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clima'),
        backgroundColor: Color(0xFF352748).withOpacity(.75),
        elevation: 0.0,
        centerTitle: true,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: () async {
                var typedName = await Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return CityScreen();
                    },
                  ),
                );
                if (typedName != null) {
                  var weatherData = await weather.getCityWeather(typedName);
                  updateUI(weatherData);
                }
              },
              icon: Icon(
                Icons.location_on,
                size: 40.0,
              ),
            ),
          ),
        ],
        leading: IconButton(
          onPressed: () async {
            var weatherData = await weather.getLocationWeather();
            updateUI(weatherData);
          },
          icon: Icon(
            Icons.ads_click,
            size: 40.0,
          ),
        ),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/location_background.jpg'),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.white.withOpacity(0.8), BlendMode.dstATop),
          ),
        ),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Row(
                  children: [
                    Text(
                      '$temperature°',
                      style: kTempTextStyle,
                    ),
                    Text(
                      weatherIcon,
                      style: kConditionTextStyle,
                    ),
                  ],
                ),
              ),
              Text(
                '$cityName',
                style: kMessageTextStyle,
              ),
              Text(
                '$description',
                style: kMessageTextStyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  StatusCard('Humidity\n''$humidity'),
                  StatusCard('Wind Speed\n''$windSpeed'),
                  StatusCard('Max ☀\n''$temp_max°'),
                  StatusCard('Min 🌙\n''$temp_min°'),
                ],
              ),
              IconsRow(),
              WeatherCard('$weatherMessage in $cityName'),
            ],
          ),
        ),
      ),
    );
  }
}




