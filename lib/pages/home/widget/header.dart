import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
        padding: EdgeInsets.only(top: MediaQuery.of(context).padding.top*2,right: 30,left:30),
        child: const Column(          
          children:[
            Text(
            'Welcome',
            style: TextStyle(
              color: Colors.white,
              fontSize: 35,
              fontWeight: FontWeight.bold
              ),
            ),
            Text(
            ' to my Weather App',
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              ),
            ),
          ]
          ),
      );
  }
}