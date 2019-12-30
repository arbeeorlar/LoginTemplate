import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  Color color ; 
  ProfilePage({this.color});

  @override
  _ProfilePageState createState() => _ProfilePageState(color:this.color);
}

class _ProfilePageState extends State<ProfilePage> {
Color color ; 
_ProfilePageState({this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      child: ListView(
        children: <Widget>[
          ListTile(
              title: Text('Item 1'),
               subtitle: Text("data 1"),
               leading: new Icon(Icons.account_box),
              onTap: () {
                
              },
          ),
          ListTile(
              title: Text('Item 2'),
               subtitle: Text("data 2"),
               leading: new Icon(Icons.add_a_photo),
              onTap: () {
                
              },
          ),
          ListTile(
              title: Text('Item 3'),
               subtitle: Text("data 3"),
               leading: new Icon(Icons.add_circle),
              onTap: () {
                
              },
          ),
          ListTile(
              title: Text('Item 4'),
               subtitle: Text("data 4"),
               leading: new Icon(Icons.ac_unit),
              onTap: () {
                
              },
          ),
          ListTile(
              title: Text('Item 5'),
               subtitle: Text("data 5"),
               leading: new Icon(Icons.beach_access),
              onTap: () {
                
              },
          ),
          ListTile(
              title: Text('Item 6'),
               subtitle: Text("data 6"),
               leading: new Icon(Icons.add_call),
              onTap: () {
                
              },
          ),
          ListTile(
              title: Text('Item 7'),
               subtitle: Text("data 7"),
               leading: new Icon(Icons.bluetooth),
              onTap: () {
                
              },
          ),
          ListTile(
              title: Text('Item 8'),
               subtitle: Text("data 8"),
               leading: new Icon(Icons.desktop_mac),
              onTap: () {
                
              },
          ),ListTile(
              title: Text('Item 9'),
               subtitle: Text("data 9"),
               leading: new Icon(Icons.add_location),
              onTap: () {
                
              },
          ),
          ListTile(
              title: Text('Item 10'),
               subtitle: Text("data 10"),
               leading: new Icon(Icons.zoom_out),
              onTap: () {
                
              },
          ),
          ListTile(
              title: Text('Item 11'),
               subtitle: Text("data 11"),
               leading: new Icon(Icons.radio),
              onTap: () {
                
              },
          ),

        ],
      ),
    );
  }
}