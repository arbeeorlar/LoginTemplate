import 'package:flutter/material.dart';
import '../ui/dashboard.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {

   double height = MediaQuery.of(context).size.height;
   double width = MediaQuery.of(context).size.width;
   TextStyle style = TextStyle(fontFamily: 'Montserrat', fontSize: 20.0);

    final emailTextField =  TextField(
      obscureText: false,
         
          style: style,
          onChanged: (text){
             
          },
          decoration: InputDecoration(
              fillColor: Colors.grey,
              
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "Username:",
              border:OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))
              ),
    ); 
    

    final passwordTextField = TextField(
      
      obscureText: true,
          style: style,
          onChanged: (text){
             
          },
          
          decoration: InputDecoration(
            
            fillColor: Colors.grey,
              contentPadding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
              hintText: "Password:",
              border:OutlineInputBorder(borderRadius: BorderRadius.circular(20.0))),
    ); 
    
     final loginButon = Material(
          elevation: 5.0,
          borderRadius: BorderRadius.circular(30.0),
          color: Color(0xff01A0C7),
          child: MaterialButton(
            minWidth: MediaQuery.of(context).size.width,
            padding: EdgeInsets.fromLTRB(20.0, 15.0, 20.0, 15.0),
            onPressed: () {

                Route route = MaterialPageRoute(builder: (context) => DashboardPage());
                Navigator.push(context, route);
            },
            child: Text("Login",
                textAlign: TextAlign.center,
                style: style.copyWith(
                    color: Colors.white, fontWeight: FontWeight.bold)),
                   
          ),
        );
    

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
                margin: const EdgeInsets.only(bottom: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                       Container(
                          
                           decoration: new BoxDecoration(
                             color: Colors.white,
                             borderRadius: new BorderRadius.all(Radius.circular(10.0)),
                             
                           ),
                          height: 400, //  (height * 0.50),
                          padding: const EdgeInsets.only(right: 20,left: 20),
                          
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.start,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                             SizedBox(height: 40.0),
                              new Text(
                                "Welcome Back",
                                  textAlign: TextAlign.center,
                                  style: style.copyWith(
                                  color: Colors.black, fontSize: 25, fontWeight: FontWeight.bold)
                              ),
                              SizedBox(height: 10.0),
                              new Text("Login to your account",
                                  textAlign: TextAlign.center,
                                  style: style.copyWith(
                                  color: Colors.grey, fontSize: 14, fontWeight: FontWeight.normal)
                                  ),
                              SizedBox(height: 55.0),
                              emailTextField,
                              SizedBox(height: 15.0),
                              passwordTextField,
                              SizedBox(height: 15.0),
                              loginButon,
                              SizedBox(height: 18.0),
                              new Text("Forget Password",
                                  textAlign: TextAlign.center,
                                  style: style.copyWith(
                                  color: Colors.grey, fontSize: 17, fontWeight: FontWeight.normal)
                                  ),
                              SizedBox(height: 15.0),
                             
                          ]
                          )
                      ),
                        SizedBox(height: 15.0),
                        new Text(
                                "Don't have an account? SignUp",
                                  textAlign: TextAlign.center,
                                  style: style.copyWith(
                                  color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold)
                              ),
                              SizedBox(height: 10.0),
                    ],
                ), 
          ) 

          ],
       ),
    );
  }
}