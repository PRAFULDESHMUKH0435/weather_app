import 'dart:convert';
import 'dart:js';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

import 'Models/WeatherModel.dart';
class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  List<WeatherModel> list =[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // GetAPIData();
  }

  // Future<WeatherModel> GetAPIData() async{
  //   final responce = await http.get(Uri.parse('https://api.openweathermap.org/data/2.5/weather?q=Nagpur&appid=692e47bfde1ac74ed7638750224d3ed1'));
  //   var data = jsonDecode(responce.body.toString());
  //   if(responce.statusCode==200){
  //     for(Map i in data){
  //       return WeatherModel.fromJson(i);
  //     }
  //   }else{
  //     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('ERROR')));
  //   }
  //   return WeatherModel.fromJson(i);
  // }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu,color: Colors.black,),
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text('Weather App',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black),),centerTitle: true,
        actions: [
          IconButton(onPressed:(){
            // opendilogbox(context);
          }, icon: Icon(Icons.search,color: Colors.black,))
        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          color: Colors.grey
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ///TOP CONTAINER
            Container(
              width: double.infinity,
              child: Column(
                children: [
                  SizedBox(height: 15,),
                  Icon(Icons.sunny,color: Colors.orange,size: 80,),
                  SizedBox(height: 15,),
                  Text('30',style: TextStyle(fontSize: 30,color: Colors.black,fontWeight: FontWeight.bold),),
                  SizedBox(height: 15,),
                  Text('Nagpur',style: TextStyle(color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold),)
                ],
              ),
            ),
            ///SIZED BOX
            SizedBox(height: 15,),
            ///DIVIDER
            Divider(height: 3.0,color: Colors.black,),

            ///BOTTOM CONTAINER
            Expanded(
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 10.0),
                // decoration: BoxDecoration(
                //   color: Colors.grey,
                //   borderRadius: BorderRadius.all(Radius.circular(12.0))
                // ),
                child:Center(
                  child: Column(
                    children: [
                      SizedBox(height: 15,),
                      Text('Additional Information',style: TextStyle(fontSize: 25,color: Colors.black,fontWeight: FontWeight.bold),),
                      SizedBox(height: 30,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Wind',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                          Text('2.6',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                          Text('Humidity',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                          Text('60',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),

                        ],
                      ),
                      SizedBox(height: 15,),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text('Wind',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                          Text('2.6',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                          Text('Humidity',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
                          Text('60',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),

                        ],
                      ),

                    ],
                  ),
                ) ,
              ),
            )

          ],
        ),
      ),
    );
  }
}

//  bool onbackPressed() {
//    bool? exitapp = showDialog(
//        context: context,
//        builder: (context){
//          return AlertDialog(
//           title:  Text('Exit ? '),
//           content: Text('Are You Sure You Want To Exit? '),
//           actions: [
//             TextButton(onPressed: (){}, child: Text('Yes')),
//             TextButton(onPressed: (){}, child: Text('No')),
//           ],
//          );
//        });
//
//    return exitapp??false;
//
// }

void opendilogbox(BuildContext context) {
  showDialog(
      context: context,
      builder: (context){
        return Scaffold(
          body: Center(
            child: Container(
              height: 200,
              width: 200,
              color: Colors.red,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextField(),
                  Text('Enter City'),
                  Row(
                    children: [
                      ElevatedButton(onPressed: (){}, child: Text('Add',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),)),
                      SizedBox(width: 8,),
                      ElevatedButton(onPressed: (){}, child: Text('Add',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),)),

                    ],
                  )
                ],
              ),
            ),
          ),
        );
      });
}
