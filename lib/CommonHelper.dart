import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/homepage.dart';

import 'WeatherModel.dart';

class CommonHelper {
  final _addlocationcontroller = TextEditingController();
  final String  apikey = '692e47bfde1ac74ed7638750224d3ed1';
  HomePage hm = HomePage();

  ShowSnackbar(BuildContext context,String msg){
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(msg)));
  }

  addlocationdialog(BuildContext context){
    showDialog(
        context: context,
        builder: (context){
          return AlertDialog(
            title: Text("Enter Location"),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextField(
                  keyboardType: TextInputType.streetAddress,
                  decoration: InputDecoration(
                    icon: Icon(Icons.location_city_sharp),
                    hintText: "Enter City",
                  ),
                  controller: _addlocationcontroller,
                ),
              ],
            ),
            actions: [
              OutlinedButton(onPressed: ()=>Navigator.pop(context), child: Text("Cancel")),
              OutlinedButton(onPressed: () {
                if(!_addlocationcontroller.text.toString().isEmpty){
                  GetWeather(context,_addlocationcontroller.text.toString());
                  Navigator.pop(context);
                }else{
                  ShowSnackbar(context, "Enter City Name");
                }
              }, child: Text("Check")),

            ],
          );
        });
  }


  GetWeather(BuildContext context, String cityname) async{
    Center(child: CircularProgressIndicator());
    final response =await http.get(Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=${cityname}&appid=${apikey}'));
    if(response.statusCode==200){
      var data = jsonDecode(response.body);
      WeatherModel wm = WeatherModel(
          cityname: data['name'],
          lat: data['coord']['lat'],
          long: data['coord']['lon'],
          main: data['weather'][0]['main'],
          tempratureinfarenhit: data['main']['temp'],
          temp_max: (data['main']['temp_max']-32)*(5/9),
          temp_min: data['main']['temp_min'],
          sunrise: data['sys']['sunrise'].toString(),
          sunset: data['main']['sunset'].toString());
      print("WEATHER MODEL DATA IS ${wm.temp_max}");
    }else{
      ShowSnackbar(context, "Error With Status Code ${response.statusCode}");
    }
  }



}