import 'package:flutter/material.dart';
class BottomContainer extends StatelessWidget {
  const BottomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Column(
            children: [
              Text('21\u2070C',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
              SizedBox(height: 8,),
              Text('THUNDERSTORM ',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
              SizedBox(height: 8,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Friday 16',style: TextStyle(color: Colors.white),),
                  SizedBox(width: 10),
                  Text(' 06:45',style: TextStyle(color: Colors.white),),
                ],
              )
            ],
          ),
          SizedBox(height: 30,),
          Column(
            children: [
              ///ROW 1
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(children: [
                    Icon(Icons.wb_sunny_outlined,size: 50,color: Colors.yellow,),
                    SizedBox(width: 8,),
                    Column(
                      children: [
                        Text('Sunrise',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),
                        Text('08:34',style: TextStyle(fontSize: 15,color: Colors.white),)
                      ],
                    )
                  ],),
                  Row(children: [
                    Icon(Icons.nights_stay_rounded,size: 50,color: Colors.blue,),
                    SizedBox(width: 8,),
                    Column(
                      children: [
                        Text('Sunset',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),
                        Text('08:34',style: TextStyle(fontSize: 15,color: Colors.white),)
                      ],
                    )
                  ],),

                ],
              ),
              SizedBox(height: 30,),
              ///ROW 2
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(children: [
                    Icon(Icons.device_thermostat_sharp,size: 50,color: Colors.orange,),
                    SizedBox(width: 8,),
                    Column(
                      children: [
                        Text('Temp. Max',style: TextStyle(fontSize: 15,color: Colors.white),),
                        Text('12\u2070C',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),
                      ],
                    )
                  ],),
                  Row(children: [
                    Icon(Icons.device_thermostat_sharp,size: 50,color: Colors.deepPurpleAccent,),
                    SizedBox(width: 8,),
                    Column(
                      children: [
                        Text('Temp. Min',style: TextStyle(fontSize: 15,color: Colors.white),),
                        Text('8\u2070C',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.white),),
                      ],
                    )
                  ],),
                ],
              ),
            ],
          )
        ],
      ),
    );
  }
}
