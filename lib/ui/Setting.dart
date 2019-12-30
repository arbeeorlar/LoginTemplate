import 'package:flutter/material.dart';

class SettingPage extends StatefulWidget {
  Color color ;
SettingPage({this.color});

  @override
  _SettingPageState createState() => _SettingPageState(color:this.color);
}

class _SettingPageState extends State<SettingPage> {
 Color color ;

 _SettingPageState({this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      
    );
  }
}