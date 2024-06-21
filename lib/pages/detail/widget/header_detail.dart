import 'package:flutter/material.dart';
import 'package:flutter_weather_app/models/city.dart';
import 'package:flutter_weather_app/pages/detail/widget/current.dart';
import 'package:flutter_weather_app/services/weatherservice.dart';

class HeaderDetail extends StatelessWidget {
  const HeaderDetail({super.key,required this.city});

  final City city;

  @override
  Widget build(BuildContext context) {
    final ws=WeatherService(); 
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 20),
      width:MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.8,
      child:Column(
        children: [
          Text(
            city.name,
            style: 
            const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: Colors.white
            ),
            ),
            Column(
            children:[
            Container(
              padding: const EdgeInsets.symmetric(vertical:10 ),
              width: MediaQuery.of(context).size.width,
              //color: Colors.red,
              child:Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  FutureBuilder<Map<String, dynamic>>(
                    future: ws.fetchCurrentWeather(city.lattitude,city.longitude),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(child: CircularProgressIndicator());
                      } else if (snapshot.hasError) {
                        return Center(child: Text('Error: ${snapshot.error}'));
                      } else if (snapshot.hasData) {
                        final data = snapshot.data!;
                        final currentweather=data['current'];
                      return Current(city: city,currentweather: currentweather,);
                      }
                      else{
                        return const Center(child: Text('No data'));
                      }
                    }
                  ),
                ])
               )
            ],
            ),
        ],
        ),
      );
  }
}