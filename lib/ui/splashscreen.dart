
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../ui/walkthrough.dart';


class SplashscreenPage extends StatefulWidget {
  @override
  _SplashscreenPageState createState() => _SplashscreenPageState();
}

class _SplashscreenPageState extends State<SplashscreenPage> {
  


 @override
  void initState() {
    super.initState();
    
    Timer(Duration(seconds: 2), () {
       navigateFromSplash();
    });
  }


 Future navigateFromSplash () async {
        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => WalkthroughPage()));
}

 @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image:DecorationImage(
            image: AssetImage("assets/images/img_background_1.png"),
            fit: BoxFit.cover,
          ),
          
        ),
      ),
    );
  }



}
