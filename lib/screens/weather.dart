import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timer_builder/timer_builder.dart';

class WeatherScreen extends StatefulWidget {
  WeatherScreen({Key? key, this.parseWeatherData}) : super(key: key);
  dynamic parseWeatherData;

  @override
  State<WeatherScreen> createState() => _WeatherState();
}

class _WeatherState extends State<WeatherScreen> {
  late String cityName;
  late String temp;
  var date = DateTime.now();
  @override
  void initState() {
    super.initState();
    updateData(widget.parseWeatherData);
  }

  void updateData(dynamic weatherData) {
    cityName = weatherData['main']['temp'].toString();
    temp = weatherData['name'].toString();
  }

  String getSystemTime() {
    var now = DateTime.now();
    return DateFormat("h:mm a").format(now);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
          icon: const Icon(Icons.near_me),
          onPressed: () {},
          iconSize: 30.0,
        ),
        actions: [
          IconButton(
            icon: const Icon(
              Icons.location_searching,
            ),
            onPressed: () {},
            iconSize: 30.0,
          )
        ],
      ),
      body: Stack(
        children: [
          Image.asset('images/background.jpeg',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity),
          Container(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(height: 150.0),
                            Text(
                              'Seoul',
                              style: GoogleFonts.lato(
                                  fontSize: 35.0,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                            ),
                            Row(
                              children: [
                                TimerBuilder.periodic(
                                  (const Duration(minutes: 1)),
                                  builder: (context) {
                                    return Text(
                                      getSystemTime(),
                                      style: GoogleFonts.lato(
                                          fontSize: 16.0, color: Colors.white),
                                    );
                                  },
                                ),
                                Text(DateFormat(' - EEEE, ').format(date),
                                    style: GoogleFonts.lato(
                                        fontSize: 16.0, color: Colors.white)),
                                Text(DateFormat('d MMM, yyy').format(date),
                                    style: GoogleFonts.lato(
                                        fontSize: 16.0, color: Colors.white))
                              ],
                            )
                          ]),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '18\u2103',
                            style: GoogleFonts.lato(
                                fontSize: 45.0,
                                fontWeight: FontWeight.w300,
                                color: Colors.white),
                          ),
                          Row(
                            children: [
                              SvgPicture.asset('svg/climacon-sun.svg'),
                              const SizedBox(width: 10.0),
                              Text(
                                'clear sky',
                                style: GoogleFonts.lato(
                                    fontSize: 16.0, color: Colors.white),
                              )
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Column(
                  children: [
                    const Divider(
                      height: 15.0,
                      thickness: 2.0,
                      color: Colors.white,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            Text(
                              'AQI(대기질지수)',
                              style: GoogleFonts.lato(
                                  fontSize: 14.0, color: Colors.white),
                            ),
                            const SizedBox(height: 10.0),
                            Image.asset('images/bad.png',
                                width: 37, height: 35),
                            const SizedBox(height: 10.0),
                            Text(
                              '매우 나쁨',
                              style: GoogleFonts.lato(
                                  fontSize: 14.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '미세먼지',
                              style: GoogleFonts.lato(
                                  fontSize: 14.0, color: Colors.white),
                            ),
                            const SizedBox(height: 10.0),
                            Text(
                              '174.75',
                              style: GoogleFonts.lato(
                                  fontSize: 24.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(height: 10.0),
                            Text(
                              '㎍/m3',
                              style: GoogleFonts.lato(
                                  fontSize: 14.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '초미세먼지',
                              style: GoogleFonts.lato(
                                  fontSize: 14.0, color: Colors.white),
                            ),
                            const SizedBox(height: 10.0),
                            Text(
                              '123124',
                              style: GoogleFonts.lato(
                                  fontSize: 14.0, color: Colors.white),
                            ),
                            const SizedBox(height: 10.0),
                            Text(
                              '㎍/m3',
                              style: GoogleFonts.lato(
                                  fontSize: 14.0,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
