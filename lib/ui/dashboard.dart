import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../ui/Home.dart';
import '../ui/Profile.dart';
import '../ui/Setting.dart';


class DashboardPage extends StatefulWidget {
  @override
  _DashboardPage createState() => _DashboardPage();
}

class _DashboardPage extends State<DashboardPage> with SingleTickerProviderStateMixin {
TabController _tabController = null;
int _currentIndex = 0;
final List<Widget> _children = [HomePage(color:Colors.greenAccent),ProfilePage(color:Colors.white),SettingPage(color:Colors.amberAccent)];

List<Tab> myTab = <Tab>[
            new Tab(text: "Following",),
            new Tab(text: "Popular"),
            new Tab(text: "Fashion"),
            new Tab(text: "Friends",),
            new Tab(text: "Technology"),
            new Tab(text: "Others")
          ];


@override
  void initState() {
    super.initState();
    
  }

OnTapClickEvent(int  index){
    setState(() {
         _currentIndex =  index ;
    });
}



  @override
  Widget build(BuildContext context) {


        return Scaffold(
           
            appBar: backButton(),
      
        bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex, // this will be set when a new tab is tapped
        onTap: OnTapClickEvent,
       items: [
         BottomNavigationBarItem(
           icon: new Icon(Icons.home),
           title: new Text('Home'),
         ),
         BottomNavigationBarItem(
           icon: new Icon(Icons.mail),
           title: new Text('Profile'),
         ),
            BottomNavigationBarItem(
             
              icon: Icon(Icons.person),
              title: Text('Settings')
            ),
             
          ],
        ),
        body: _children[_currentIndex],
        drawer:  Drawer(
          child: ListView(
           children: <Widget>[
              DrawerHeader(
                  child: Center(child: Text("Drawer"),),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                  ),
                ),
              ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
              ),
              ListTile(
               title: Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
              ),
              ListTile(
                title: Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
              ),
              ListTile(
                title: Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
              ),
              ListTile(
                title: Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
              ),

           ],
          ),
        ),
    );
  }

  AppBar backButton() {
    return AppBar(
            leading: IconButton(
                icon: const Icon(Icons.menu),
                onPressed: () {
                },
                ),
          title: 
              Text("BankOne",
              style: TextStyle(fontWeight:FontWeight.bold,fontSize: 18,fontStyle: FontStyle.normal),
              ),
              elevation: 0.0,
               actions: <Widget>[
                 IconButton(
                   icon: Icon(Icons.search),
                    onPressed: () {
    
                   },
             ),
           ],
           
      );
  }
}