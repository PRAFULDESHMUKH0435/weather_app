import 'package:flutter/material.dart';
class TopContainer extends StatelessWidget {
  const TopContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              IconButton(onPressed: (){}, icon: Icon(Icons.location_on,size: 25,color: Colors.red,)),
              Text('Nagpur',style: TextStyle(fontSize: 25,color: Colors.white),)
            ],
          ),
          /// GOOD MORNING
          Container(
            margin: EdgeInsets.only(left: 12),
            child: Row(
              children: [
                Text('Good Morning',style: TextStyle(fontSize: 40,color: Colors.white,fontWeight: FontWeight.bold),)
              ],
            ),
          ),
          ///CLOUD IMAGE
          Container(
            height: 200,
            width: double.infinity,
            child: Icon(Icons.thunderstorm,size: 180,color: Colors.white,),
          ),
        ],
      ),
    );
  }
}
