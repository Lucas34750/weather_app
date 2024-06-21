import 'package:flutter/material.dart';
import 'package:open_meteo/open_meteo.dart';

class WeatherService {
  

  Future<Map<String, dynamic>> fetchCurrentWeather(double latitude, double longitude) async {
    var weather = 
    Weather(
      latitude: latitude,
      longitude: longitude,
    );
    var response= await weather.raw_request(
      current: [
        Current.temperature_2m,
        Current.apparent_temperature,
        Current.cloud_cover,
        Current.precipitation,
        Current.relative_humidity_2m,
        Current.wind_speed_10m,
        Current.wind_direction_10m]);

    return response;
  }

  Future<Map<String,dynamic>> fetchHourlyWeather(double latitude,double longitude,DateTimeRange range) async{
    var weather=
    Weather(
      latitude: latitude,
      longitude: longitude,
      start_date: range.start,
      end_date: range.end,

    );
    var response=await weather.raw_request(
      hourly: [
        Hourly.apparent_temperature,
        Hourly.temperature_2m,
        Hourly.cloud_cover,
        Hourly.wind_direction_10m,
        Hourly.wind_speed_10m,
        Hourly.relative_humidity_2m,
        Hourly.precipitation_probability,
      ],

    );
    return response;
  }
}
