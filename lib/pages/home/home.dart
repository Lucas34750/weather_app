import 'package:flutter/material.dart';
import 'package:flutter_weather_app/pages/home/widget/header.dart';
import 'package:flutter_weather_app/pages/home/widget/coords.dart';
import 'package:flutter_weather_app/pages/home/widget/popular.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor:const Color.fromARGB(255, 15, 0, 146),
      body: SingleChildScrollView(
        child: Stack(
          children: [
            Transform(
              transform: Matrix4.identity()..rotateZ(20),
              origin: const Offset(150, 50),
              child: Image.asset(
                'assets/images/bg_liquid.png',
                width: 200,
              ),              
              ),
              Positioned(
                top: 200,
                right: 0,
                child: Transform(
                  transform: Matrix4.identity()..rotateZ(20),
                  origin: const Offset(180, 100),
                  child: Image.asset(
                    'assets/images/bg_liquid.png',
                    width: 200,
                  ),                
                ),
              ),
             Column(
              children: [
                const Header(),
                const CoordsForm(),
                Popular(),
              ]
              
            )
            
        ],),
      ),
      
    );
  }
}