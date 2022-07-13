import 'package:flutter/material.dart';
import 'package:flutter_app/model/my_location.dart';
import 'package:flutter_app/screens/weather.dart';
import 'package:flutter_app/services/network.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:geolocator/geolocator.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  final apiKey = dotenv.get('API_KEY');

  @override
  void initState() {
    getLocation();
    super.initState();
  }

  // 현재 위치 가져오기
  void getLocation() async {
    LocationPermission permission = await Geolocator.requestPermission();
    MyLocation myLocation = MyLocation();
    await myLocation.getMyCurrentLocation();

    final parameters = {
      'lat': myLocation.latitude2.toString(),
      'lon': myLocation.longitude2.toString(),
      'appid': apiKey
    };

    Network network =
        Network('api.openweathermap.org', 'data/2.5/weather', parameters);
    moveToWeatherScreen(await network.getJsonData());
  }

  void moveToWeatherScreen(dynamic weatcherData) {
    Navigator.push(context, MaterialPageRoute(builder: (context) {
      return WeatherScreen(parseWeatherData: weatcherData);
    }));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: OutlinedButton(
          onPressed: () async {
            getLocation();
          },
          child: const Text(
            "Get my location",
            style: TextStyle(color: Colors.amber),
          )),
    ));
  }
}
