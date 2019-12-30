import 'package:flutter/material.dart';

class LandingPage extends StatefulWidget {
  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
       home: DefaultTabController(
         length: 5,
         child: Scaffold(
          appBar: AppBar(
            title: Text("Tabb"),
            bottom: TabBar(
              
            ),
          ),
         ),
       ),
    );
  }
}