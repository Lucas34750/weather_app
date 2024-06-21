import 'package:country_flags/country_flags.dart';
import 'package:flutter/material.dart';
import 'package:flutter_weather_app/models/city.dart';
import 'package:flutter_weather_app/pages/detail/detail.dart';

class Popular extends StatelessWidget {
  Popular({super.key});

  final cities = City.cities();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Color(0xFFF6F8FF),
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        )
      ),
      child: Column(
        children: [
          const SizedBox(height: 20,),
          const Text(
            'Popular Cities',
            style: TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.w600,
            ),
          ),
      SizedBox(
        height: 402,
        child:
      ListView.separated(
        padding: const EdgeInsets.symmetric(
          horizontal: 25,
          vertical: 20,
        ),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) => GestureDetector(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(builder: ((context)=> Detail(city: cities[index]))));
          },
          child: Card(
            elevation: 5,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15),
            ),
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 5,
                vertical: 15
                ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: const Color.fromARGB(255, 177, 175, 175),
              ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   Text( 
                    cities[index].name,
                    style: 
                    const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Text( 
                    cities[index].countryCode as String,
                    style: 
                    const TextStyle(
                      fontSize: 16,
                    ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                  CountryFlag.fromCountryCode(
                      height: 20,
                      width: 30,
                      cities[index].countryCode as String,
                      shape: const RoundedRectangle(6),
                    )
                  ]
              ),
            ),

          ),
          ), separatorBuilder: (context, index) => const SizedBox(width: 10),
        itemCount: cities.length,
      ) 
      ),
      ]
    )
    );
  }
}