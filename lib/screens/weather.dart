import 'package:flutter/material.dart';

class WeatherScreen extends StatefulWidget {
  WeatherScreen({Key? key, this.parseWeatherData}) : super(key: key);
  dynamic parseWeatherData;

  @override
  State<WeatherScreen> createState() => _WeatherState();
}

class _WeatherState extends State<WeatherScreen> {
  late String cityName;
  late String temp;
  @override
  void initState() {
    super.initState();
    updateData(widget.parseWeatherData);
  }

  void updateData(dynamic weatherData) {
    cityName = weatherData['main']['temp'].toString();
    temp = weatherData['name'].toString();

    // print(cityName);
    // print(temp);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Center(
              child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(cityName, style: const TextStyle(fontSize: 30.0)),
          const SizedBox(height: 20.0),
          Text(temp, style: const TextStyle(fontSize: 30.0))
        ],
      ))),
    );
  }
}
