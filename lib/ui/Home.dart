import 'package:flutter/material.dart';
import '../ui/Profile.dart';

class HomePage extends StatefulWidget {
   Color  color =  null;
   HomePage({this.color});
   
  @override
  _HomePageState createState() => _HomePageState(color: color);
}

class _HomePageState extends State<HomePage> {

Color  color;

_HomePageState({this.color});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: this.color,
        child: new Column(
          children: <Widget>[
            Container(
                height: 90,
                color: Colors.blue,
            ),
            Container(
              decoration: new BoxDecoration(
                             color: Colors.purple,
                             borderRadius: new BorderRadius.all(Radius.circular(10.0)),
                             shape: BoxShape.rectangle
                           ),
                          height: 250,
                          padding: const EdgeInsets.only(right: 20,left: 20),
                          margin: const EdgeInsets.all(20),
            ),
            Center(child: Text("History"),),
            
           
          ],
        ),
      ),
    );
  }
}