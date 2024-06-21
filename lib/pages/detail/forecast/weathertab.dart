import 'package:flutter/material.dart';
import 'package:flutter_weather_app/pages/detail/widget/winddirection.dart';


class WeatherTab extends StatelessWidget {
  final Map<String,dynamic> data;
  
  const WeatherTab({super.key,required this.data});
  static const TextStyle mystyle=TextStyle(color: Colors.white,fontWeight: FontWeight.bold);
  

  @override
  Widget build(BuildContext context) {
    final List<dynamic> datelist=data['time'];
    final List<dynamic> degreslist=data['wind_direction_10m'];
    return Container(
      color:const Color.fromARGB(66, 0, 0, 0),
      child:
      Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Row(children: [
            createTitle('Time'),
          Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children:
        List.generate(datelist.length,
           (index){
            DateTime dateTime=DateTime.fromMillisecondsSinceEpoch(datelist[index]*1000);

          return Container(
            padding: const EdgeInsets.all(10),
            width: 110,
            child: Center(
              child:
              Column(
                children: [
                  Text('${dateTime.year}-${dateTime.month}-${dateTime.day}',style: mystyle,),
                  Text('${dateTime.hour}H',style: mystyle)
                ],
              )
              ),
          );}
          )
    ),]),
          createRow(data['temperature_2m'],'° C','Temperature'),
          createRow(data['apparent_temperature'],'° C','Apparent'),
          createRow(data['relative_humidity_2m'],'%','Humidity'),
          createRow(data['precipitation_probability'],'%','Precipitation'),
          createRow(data['cloud_cover'],'%','Cloud cover'),
          createRow(data['wind_speed_10m'], 'km/h', 'Wind speed'),
          Row(children: [createTitle('Direction'),
          Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children:
        List.generate(degreslist.length,
           (index){
          return Container(
            padding: const EdgeInsets.all(10),
            width: 110,
            child: Center(
              child:Winddirection().getDirection(degreslist[index])
              ),
          );}
          )
    )
    ]
    )
          

      ],)
    );
  }

  Widget createRow(List<dynamic> data,String unit,String name){
    return Row(
      children: [
        createTitle(name),

        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children:
            List.generate(data.length,
              (index)=>createTitle('${data[index]??'no data '}$unit'))
        )
      ],
    );
  }
  Widget createTitle(String title){
    return
    Container(
                padding: const EdgeInsets.all(10),
                width: 110,
                child: Center(child:Text(title,style:mystyle)),
              );
  }
}