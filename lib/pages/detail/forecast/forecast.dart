import 'package:flutter/material.dart';
import 'package:flutter_weather_app/models/city.dart';
import 'package:flutter_weather_app/pages/detail/forecast/weathertab.dart';
import 'package:flutter_weather_app/services/weatherservice.dart';

class Forecast extends StatelessWidget {
  final DateTimeRange dateTimeRange;
  final City city;
  const Forecast({super.key,required this.dateTimeRange,required this.city});

  @override
  Widget build(BuildContext context) {
    var ws=WeatherService();
    return Scaffold(
      appBar: AppBar(
        title: Center(child :Text('${city.name} Forecast',style: const TextStyle(fontSize: 20,color: Colors.white,fontWeight: FontWeight.bold),)),
        backgroundColor: const Color.fromARGB(255, 15, 0, 146),
      ),
      backgroundColor:  const Color.fromARGB(255, 15, 0, 146),
      body: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child:Row(
          children: [
            FutureBuilder<Map<String, dynamic>>(
                    future: ws.fetchHourlyWeather(city.lattitude,city.longitude,dateTimeRange),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(child: CircularProgressIndicator());
                      } else if (snapshot.hasError) {
                        return Center(child: Text('Error: ${snapshot.error}'));
                      } else if (snapshot.hasData) {
                        final data = snapshot.data!;
                        final hourlyweather=data['hourly'];
                      return WeatherTab(data: hourlyweather);
                      }
                      else{
                        return const Center(child: Text('No data'));
                      }
                    }
                  ),
          ],
        ))
      
    )
    
    ;
  }
}