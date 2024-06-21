
import 'package:flutter/material.dart';
import 'dart:math' as math;

class Winddirection{
  Widget getDirection(int? degres){
    if(degres==null){return const Center(child:Text('no data'));}
    
    else {
      return        
        Container(
                decoration: const BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                  borderRadius: BorderRadius.all(Radius.circular(20),)
                ),
                width:90,
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children:[
                    const Text(
                        'W',
                        style: TextStyle(fontWeight:  FontWeight.bold),
                        
                      ),
                    Column(
                    children :[
                      const Text(
                        'N',
                        style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),
                        
                      ),
                      Transform.rotate(
                      angle:math.pi/2+math.pi/180*degres,
                      child: const Icon(
                        size:50,
                        Icons.arrow_circle_left_rounded
                      ),
                    ),
                    const Text(
                        'S',
                        style: TextStyle(fontWeight:  FontWeight.bold),
                        
                      ),
                  ]
              ),
              const Text(
                        'E',
                        style: TextStyle(fontWeight:  FontWeight.bold),
                        
                      )
            ]
          )
        );
    }

  }
}