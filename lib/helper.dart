import 'package:flutter/material.dart';

///BACK PRESS EXIT  FUNCTION
Future<bool> OnbackPressed(BuildContext context) async{
  bool ? exitapp = await showDialog(
      context: context,
      builder: (context){
         return AlertDialog(
           backgroundColor: Colors.black38,
           title: Text('Exit ?',style: TextStyle(color: Colors.white),),
           content: Text('Are You Sure You Want To Exit ?',style: TextStyle(color: Colors.white),),
           actions: [
             OutlinedButton(onPressed: ()=>Navigator.of(context).pop(true), child: Text('Yes',style: TextStyle(color: Colors.white),)),
             OutlinedButton(onPressed: ()=>Navigator.of(context).pop(false), child: Text('No',style: TextStyle(color: Colors.white),)),
           ],
         );
      });
  return exitapp?? false;
}
