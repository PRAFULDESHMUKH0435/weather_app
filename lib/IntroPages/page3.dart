import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
class Page3 extends StatelessWidget {
  const Page3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 250,
              child: Lottie.asset('assets/Animations/anim_4.json'),
            ),
            Text('Weather App',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color:Colors.white),)
          ],
        ),
      ),
    );
  }
}
