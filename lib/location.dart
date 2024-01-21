import 'package:geolocator/geolocator.dart';
class MyLocation{

  double mylatitude=0.0;
  double mylongitude=0.0;
  String result ="";

   void getlocation() async {
    try{
         Position position =await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.low);
         mylatitude=position.latitude;
         mylongitude = position.longitude;
         print('LATITUDE :$mylatitude');
         print('LONGITUDE : $mylongitude');
         result = mylatitude.toString()+" "+mylongitude.toString();
    }catch(e){
      print('ERROR : $e');
      result=e.toString();
    }
    print(result);
  }

}