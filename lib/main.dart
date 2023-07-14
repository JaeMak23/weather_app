import 'package:flutter/material.dart';
import 'screens/weather_screeen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(
        useMaterial3: true,
      ),
      title: 'Weather App',
      home:const WeatherScreen(),
    );
  }
}