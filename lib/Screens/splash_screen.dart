import 'dart:async';

import 'package:flutter/material.dart';
import 'package:my_bucket_app/Screens/onboarding_screens.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    Timer(const Duration(seconds: 3), (){
      Navigator.push(context, MaterialPageRoute(builder: (context)=>const onBoardings()));
    });
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Hero(
              tag: 'logo',
                child: Image.asset('images/logo.png')),
             const SizedBox(height: 50,),
             Text('My Bucket', style: TextStyle(
              fontSize: 30,
              fontFamily: 'ZenAntique',
                fontWeight: FontWeight.bold,
                color: Theme.of(context).accentColor
            ),),
            const SizedBox(height: 10,),
             Text('Grocery at your door step', style: TextStyle(
              fontFamily: 'HindSiliguri',
              fontSize: 18,
              color: Theme.of(context).primaryColor
            ),),
          ],
        ),
      ),
    );
  }
}
