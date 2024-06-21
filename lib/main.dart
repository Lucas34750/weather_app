import 'package:flutter/material.dart';
import 'package:flutter_weather_app/pages/home/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title:'weather App',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
