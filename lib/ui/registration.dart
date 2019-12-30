import 'package:flutter/material.dart';


class RegistrationPage extends StatefulWidget {
  @override
  _RegistrationPageState createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
   Widget build(BuildContext context) {
    return Scaffold(
       body: new Stack(
          children: <Widget>[
             new Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                   image: AssetImage("assets/images/img_background_2.png"),
                   fit: BoxFit.cover,
                )
              ),
          ),
          new Container(
                padding: const EdgeInsets.only(right: 20,left: 20),
                margin: const EdgeInsets.only(bottom: 100),
                child: Column(
                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      new Container(
                          

                      ),
                     
                     

                    ],
                ), 
          ) 

          ],
       ),
    );
  }
}