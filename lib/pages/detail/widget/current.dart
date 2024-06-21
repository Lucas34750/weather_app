import 'package:flutter/material.dart';
import 'package:flutter_weather_app/models/city.dart';

import 'package:flutter_weather_app/pages/detail/widget/winddirection.dart';

// ignore: must_be_immutable
class Current extends StatelessWidget {
  City city;
  Map<String,dynamic> currentweather;

  Current({super.key,required this.city,required this.currentweather});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 0),
      decoration: const BoxDecoration(
        color: Color.fromARGB(172, 0, 0, 0),
        borderRadius: BorderRadius.all(Radius.circular(40),)
      ),
      width:MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.6,
      child:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
            const Text('Current Weather',
               style:TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w900,
                color: Colors.white                
              ),
            ),
            getColumn("temperature_2m",50,'° C','temperature'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    getColumn('apparent_temperature', 30,'° C','apparent temp'),
                    getColumn('relative_humidity_2m', 30,'%','humidity'),
                    getColumn('wind_speed_10m', 30,'km/h','wind speed'),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    getColumn('cloud_cover', 30,'%','cloud cover'),
                    getColumn('precipitation', 30,'mm','precipitation'),
                    Column(
                      children:[
                        const Text(
                        'wind direction',
                        style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w400,
                              color: Colors.white                
                            )
                        ),
                        Winddirection().getDirection(currentweather['wind_direction_10m'])
                        ]
                        ),
                  ],
                )
              ],
            )
      ],),
    );
  }

  Widget getColumn(String variable,double size,String unit,String name){
    return Column (
      children:[
        Text(
          name,
          style: TextStyle(
                fontSize: size/2,
                fontWeight: FontWeight.w400,
                color: Colors.white                
              )
          ),
            
            
         Text('${currentweather[variable]}$unit',
            style:  TextStyle(
              color: Colors.white,
              fontSize: size,
              fontWeight: FontWeight.bold
            ),)
          
      
    ]
    );
  }

  

  
}