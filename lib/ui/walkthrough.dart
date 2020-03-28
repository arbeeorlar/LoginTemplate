
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginlayout/widgets/background.dart';
import '../ui/login.dart';
import '../ui/registration.dart';

class WalkthroughPage  extends StatefulWidget {
  @override
  _WalkthroughPage  createState() => _WalkthroughPage();
}

class _WalkthroughPage  extends State<WalkthroughPage > {

//Image image  = AssetImage("assets/images/img_background_2.png") as Image;



@override
  Widget build(BuildContext context) {
  TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

 final loginButon = Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(10.0),
          color: Color(0xff01A0C7),
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () {
             
                Route route = MaterialPageRoute(builder: (context) => LoginPage());
                Navigator.push(context, route);
            },
            child: Text("Login",
                textAlign: TextAlign.center,
                style: style.copyWith(
                    color: Colors.white, fontWeight: FontWeight.normal)),
                   
          ),
        );

final registerButton = Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(10.0),
          
          color: Color(0xff01A0C7),
          
          child: MaterialButton(
            
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () {
             Route route = MaterialPageRoute(builder: (context) => RegistrationPage());
             Navigator.push(context, route);
            },
            child: Text("Register",
                textAlign: TextAlign.center,
                style: style.copyWith(
                    color: Colors.white, fontWeight: FontWeight.normal)),
                   
          ),
        );

    return Scaffold(
      body: new Stack(
        children: <Widget>[
           backgroundView(),

          // new Container(
          //     decoration: BoxDecoration(
          //       image: DecorationImage(
          //          image: AssetImage("assets/images/img_background_2.png"),
          //          fit: BoxFit.cover,
          //       )
          //     ),
          // ),
          new Container(
                padding: const EdgeInsets.only(right: 20,left: 20),
                margin: const EdgeInsets.only(bottom: 20),
                child: Column(
                  
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      
                     
                     
                      loginButon,
                      SizedBox(height: 20.0),
                      registerButton,
                      SizedBox(height: 15.0),
                       new Text(
                         "Forget Password",
                          textAlign: TextAlign.center,
                          style: style.copyWith(
                          color: Colors.white, fontSize: 14, fontWeight: FontWeight.normal)
                       )

                    ],
                ), 
          )
        ],  
      ),
    );
  }


}