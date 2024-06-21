import 'package:flutter/material.dart';
import 'package:flutter_weather_app/models/city.dart';
import 'package:flutter_weather_app/pages/detail/widget/header_detail.dart';
import 'package:flutter_weather_app/pages/detail/widget/bottom.dart';


class Detail extends StatelessWidget {
  const Detail({super.key, required this.city});

  final City city;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 15, 0, 146),
      body: 
      SingleChildScrollView(
      child:
      Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top),
        child: 
        Stack(
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
                  HeaderDetail(city: city),

                ],
              ),
              Positioned(
          child: GestureDetector(
            onTap: () => Navigator.of(context).pop(),
            child: Container(
              margin: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top,
                left: 25,
                right: 25,
              ),
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.5),
                shape: BoxShape.circle,
              ),
              child: const Icon(
                Icons.arrow_back_ios_outlined,
                color: Colors.white,
              ),
            ),
          ),
        ),
          ],
        ),
      )
    ),
    bottomNavigationBar: Bottom(city: city),
  );
  }
}