import 'package:flutter/material.dart';
import 'package:flutter_weather_app/models/city.dart';
import 'package:flutter_weather_app/pages/detail/detail.dart';
import 'package:flutter_weather_app/pages/home/widget/coords_error.dart';

class CoordsForm extends StatefulWidget {
  const CoordsForm({super.key});

  @override
  State<CoordsForm> createState() => _CoordsFormState();
}

class _CoordsFormState extends State<CoordsForm> {

  final myController = TextEditingController();



  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.symmetric(
        horizontal: 25,
        vertical: 30,
      ),
      child: Stack(
        children: [
              TextField(
            keyboardType:const TextInputType.numberWithOptions(signed: true,decimal: true),
            controller: myController,
            cursorColor: const Color(0xFF5F67EA),
            decoration: InputDecoration(
              fillColor: const Color(0xFFF6F8FF),
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide: const BorderSide(
                  width: 0,
                  style: BorderStyle.none,
                ),
              ),
              contentPadding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              prefixIcon: const Icon(
                Icons.location_on_outlined,
                size: 30,
              ),
              hintText: "Coords Ex: 48.85/2.35 (Paris)",
              hintStyle: TextStyle(
                fontSize: 14,
                color: Colors.grey.withOpacity(0.95),
              ),
            ),
          )
          ,
          Positioned(
            bottom: 10,
            right: 12,
            child: Container(
              padding: const EdgeInsets.all(5),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color(0xFF5F67EA),
              ),
              child: 
              GestureDetector(
                child: const Icon(
                  Icons.search_outlined,
                  size: 30,
                ),
                onTap: () {
                  final mytext=myController.text.split('/');
                  final lat=double.tryParse(mytext.first)??91;
                  final lon=double.tryParse(mytext.last)??181;
                  if (lat < -90 || lat > 90) {
                    showDialog<String>(
                      context: context,
                      builder: (BuildContext context) =>
                      const CoordsError(
                        texterror: 
                        "Provided latitude must be in range -90 to 90"));
                    }
                    else if (lon < -180 || lon > 180) {
                      showDialog<String>(
                      context: context,
                      builder: (BuildContext context) =>
                      const CoordsError(
                        texterror:
                          "Provided longitude must be in range -180 to 180"));
                    }
                    else{

                  Navigator.of(context).push(MaterialPageRoute(builder: ((context)=> Detail(city: 
                
                  City(
                    lat,
                    lon,
                    'lat : ${lat.toStringAsFixed(2)} / lon : ${lon.toStringAsFixed(2)}', 
                    null
                    )))));
                }
                },
              ),
            ),
          )
        ],
      ),
    );
  }
}