import 'package:flutter/material.dart';
import 'package:weather_app/CommonHelper.dart';
class TopContainer extends StatelessWidget {
  const TopContainer({super.key});


  @override
  Widget build(BuildContext context) {
    CommonHelper helper = CommonHelper();
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              IconButton(onPressed: (){
                helper.addlocationdialog(context);
              }, icon: Icon(Icons.location_on,size: 25,color: Colors.red,)),
              InkWell(
                  onTap: (){
                    helper.addlocationdialog(context);
                  },
                  child: Text('Nagpur',style: TextStyle(fontSize: 25,color: Colors.white),))
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
