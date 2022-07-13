import 'package:flutter/material.dart';
import 'package:flutter_app/model/my_location.dart';
import 'package:flutter_app/services/network.dart';
import 'package:geolocator/geolocator.dart';

class Loading extends StatefulWidget {
  const Loading({Key? key}) : super(key: key);

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
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
      'q': 'London',
      'appid': 'b1b15e88fa797225412429c1c50c122a1'
    };

    Network network =
        Network('samples.openweathermap.org', 'data/2.5/weather', parameters);
    print(network.getJsonData());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: OutlinedButton(
          onPressed: () async {},
          child: const Text(
            "Get my location",
            style: TextStyle(color: Colors.amber),
          )),
    ));
  }
}
