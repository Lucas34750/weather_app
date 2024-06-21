import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_weather_app/models/city.dart';
import 'package:flutter_weather_app/pages/detail/forecast/forecast.dart';



const List<String> list = <String>['1', '2', '3'];
// ignore: must_be_immutable
class Bottom extends StatelessWidget {
  final City city;
  String numberOfDays = list.first;

  Bottom({super.key,required this.city});

  @override
  Widget build(BuildContext context) {
    return 
      Container(
      width:MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.10,
      padding:const EdgeInsets.symmetric(horizontal: 60,vertical: 10),
      child: GestureDetector(
        onTap: () => selectDateRange(context),
        child: Container(
          decoration: const BoxDecoration(
          color: Colors.lightBlueAccent,
          borderRadius: BorderRadius.all(Radius.circular(40))
      ),         
          child:
          const Center(
            child: 
            Text(
              'Weather Forecast',
              style: TextStyle(
                fontSize: 20,
                fontWeight:FontWeight.bold
              ),)),
        ),
      ),
    );
  }

  Future<void> selectDateRange(BuildContext context) async {
    DateTimeRange? picked= await showDateRangePicker(
      context: context,
      firstDate: DateTime(2016,1,1),
      lastDate: DateTime.now().add(const Duration(days:15)),
      initialDateRange: DateTimeRange(start: DateTime.now(), end: DateTime.now().add(const Duration(days:3)))
    );if(picked!=null){
          Navigator.of(context).push(MaterialPageRoute(builder: ((context)=> Forecast(dateTimeRange: picked,city: city,))));
}  }
}