import 'package:flutter/material.dart';
import 'package:weather_app/CommonHelper.dart';
import 'package:weather_app/topcontainer.dart';
import 'bottomcontainer.dart';
import 'helper.dart';
import 'location.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:weather_app/WeatherModel.dart';
class HomePage extends StatefulWidget {

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  MyLocation location = MyLocation();
  CommonHelper helper = CommonHelper();
  final _addlocationcontroller = TextEditingController();
  final String  apikey = '692e47bfde1ac74ed7638750224d3ed1';

  @override
  Widget build(BuildContext context) {
    print("Location Is :${location.result}");
    return WillPopScope(
      onWillPop:()=> OnbackPressed(context),
      child: Scaffold(
        backgroundColor: Colors.orange,
        body: SafeArea(
          minimum: EdgeInsets.all(12.0),
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: const BoxDecoration(
              gradient: RadialGradient(
                  colors: [Colors.orange,Colors.black],
              ),
            ),
            child: const SingleChildScrollView(
              child: Column(
                children: [
                  /// LOCATION + CITY NAME + CLOUD ICON
                  TopContainer(),

                  SizedBox(height: 50,),

                  /// TEMPRATURE +THUNDERSTORM +DATETIME + HEAT + SUNNY
                  BottomContainer()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }



}


