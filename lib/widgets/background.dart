
import 'package:flutter/material.dart';

class backgroundView extends StatelessWidget {


  //final AssetImage image;
  //final  Function btnPressed;


  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          image:DecorationImage(
            image:  AssetImage("assets/images/img_background_1.png"),
            fit: BoxFit.cover,
          ), 
        ),
    );
  }
}