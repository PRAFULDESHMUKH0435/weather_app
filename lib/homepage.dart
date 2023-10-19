import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class HomePage extends StatefulWidget{
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var _citycontroller = TextEditingController();

  String mydata ="";
  String City ="NAGPUR";
  ///INIT STATE
  @override
  void initState() {
    print('INIT STATE CALLED');
    ///LOCATION CODE
    super.initState();
    double l1 = 51.5072;
    double l2 = -0.118092;
    data(l1,l2);
    print('INITSTATE CALLED');
  }

  void data(double val1,double val2) async{
    try{
      String url =  'https://api.openweathermap.org/data/2.5/weather?lat=$val1&lon=$val2&appid=07d4477491773726822cdb84da69ebd6';
      Uri uri = Uri.parse(url);
      http.Response res =  await http.get(uri);
      if(res.statusCode==200){
        mydata=res.body ;
        print(res.body);
        print(mydata);
        final snack = SnackBar(content: Text('WEATHER OF $City LOADED SUCCESSFULLY'));
        ScaffoldMessenger.of(context).showSnackBar(snack);
      }else{
        print('FAILED1');
      }
    }catch(e){
      print('FAILED2');
    }
  }



  ///BUILD
  @override
  Widget build(BuildContext context) {
    print('BUILD METHOD CALLED');
    return WillPopScope(
      onWillPop: ()=>_onbackpressed(context),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.purple[700],
            centerTitle: true,
            title: Text('Weather App',style: TextStyle(fontSize: 20,color: Colors.white),),
          ),
          body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage('https://i.redd.it/ihfnlpbze7o01.jpg')
              )
            ),
            child: Center(
              child: Column(
                children: [
                  ///UPPER CONTAINER
                  Container(
                    margin: EdgeInsets.all(15.0),
                    height: 300,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 10,left: 10),
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.place,size: 25,color: Colors.white,),
                              SizedBox(width: 10,),
                              TextButton(onPressed: (){
                                  final name =  showDialog(
                                    barrierDismissible: false,
                                    context: context,
                                    builder: (context){
                                       return AlertDialog(
                                         title: Text('Enter City'),
                                         content: TextField(
                                            decoration: InputDecoration(
                                              hintText: 'Enter City Here...'
                                            ),
                                           controller: _citycontroller,
                                         ),
                                         actions: [
                                           TextButton(onPressed: (){
                                           }, child: Text('Submit'))
                                         ],
                                       );
                                    });
                              }, child: Text('Nagpur',style: TextStyle(fontSize: 25,color: Colors.white),))
                            ],
                          ) ,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10,left: 10),
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('19',style: TextStyle(fontSize: 50,fontWeight: FontWeight.bold,color: Colors.white),)
                            ],
                          ) ,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10,left: 10),
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('Cloudy',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),)
                            ],
                          ) ,
                        ),
                        Container(
                          margin: EdgeInsets.only(top: 10,left: 10),
                          child:Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text('H:24,L:18',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),)
                            ],
                          ) ,
                        ),
                      ],
                    ),
                  ),

                  ///LOWER CONTAINER
                  Container(
                    margin: EdgeInsets.all(15.0),
                    height: 300,
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.symmetric(horizontal: 15.0),
                          height:80,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Expanded(child: OutlinedButton(onPressed: (){}, child: Text('Hourly',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),))),
                              SizedBox(width: 20,),
                              Expanded(child: OutlinedButton(onPressed: (){}, child: Text('Daily',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),))),
                            ],
                          ),
                        ),
                        Container(
                          height: 200,
                          margin: EdgeInsets.symmetric(horizontal:15.0 ),
                          width: double.infinity,
                          child: SingleChildScrollView(
                            scrollDirection: Axis.horizontal,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                                  decoration:BoxDecoration(
                                    borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                    border: Border.all(color: Colors.white),
                                    color: Colors.deepPurple
                                  ),
                                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                                  height: double.infinity,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.cloud,size: 25,color: Colors.white,),
                                      Text('12:20',style: TextStyle(fontSize: 25,color: Colors.white),),
                                      Text('17',style: TextStyle(fontSize: 25,color: Colors.white),),

                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                                  decoration:BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                      border: Border.all(color: Colors.white),
                                      color: Colors.deepPurple
                                  ),
                                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                                  height: double.infinity,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.cloud,size: 25,color: Colors.white,),
                                      Text('12:20',style: TextStyle(fontSize: 25,color: Colors.white),),
                                      Text('17',style: TextStyle(fontSize: 25,color: Colors.white),),

                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                                  decoration:BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                      border: Border.all(color: Colors.white),
                                      color: Colors.deepPurple
                                  ),
                                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                                  height: double.infinity,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.cloud,size: 25,color: Colors.white,),
                                      Text('12:20',style: TextStyle(fontSize: 25,color: Colors.white),),
                                      Text('17',style: TextStyle(fontSize: 25,color: Colors.white),),

                                    ],
                                  ),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(horizontal: 10.0),
                                  decoration:BoxDecoration(
                                      borderRadius: BorderRadius.all(Radius.circular(12.0)),
                                      border: Border.all(color: Colors.white),
                                      color: Colors.deepPurple
                                  ),
                                  margin: EdgeInsets.symmetric(horizontal: 8.0),
                                  height: double.infinity,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Icon(Icons.cloud,size: 25,color: Colors.white,),
                                      Text('12:20',style: TextStyle(fontSize: 25,color: Colors.white),),
                                      Text('17',style: TextStyle(fontSize: 25,color: Colors.white),),

                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }


   Future<bool> _onbackpressed(BuildContext context) async{
      bool? exitapp =  await showDialog(
        barrierDismissible: false,
         context: context,
         builder: (context){
           return AlertDialog(
             backgroundColor: Colors.blue,
             title:  Text('Really ',style: TextStyle(fontSize: 20,color: Colors.white),),
             content: Text('Are You Sure You Want To Exit ? ',style: TextStyle(fontSize: 20,color: Colors.white),),
             actions: [
               TextButton(onPressed: (){
                 Navigator.of(context).pop(true);
               }, child: Text('Yes',style: TextStyle(color: Colors.white),)),
               TextButton(onPressed: (){
                 Navigator.of(context).pop(false);
               }, child: Text('No',style: TextStyle(color: Colors.white),)),
             ],
           );
         });
      return exitapp?? false;
  }






}
