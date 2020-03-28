import 'package:flutter/material.dart';
import 'package:loginlayout/Util/constants.dart';



class CustomDialog extends StatelessWidget {
  final String title, description, buttonText;
  final Image image;
  final  Function btnPressed;

  CustomDialog({
    @required this.title,
    @required this.description,
    @required this.buttonText,
    @required this.btnPressed,
    this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(Consts.padding),
      ),      
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      child: dialogContent(context: context,title: title,descriptior: description,buttonText: buttonText),
                );
              }
            
        
      }
      
      dialogContent({BuildContext context,String title,String descriptior,String buttonText}) {

          return Stack(
              children: <Widget>[
                // Positioned(
                //   left: Consts.padding,
                //   right: Consts.padding,
                //   child: CircleAvatar(
                //     backgroundColor: Colors.blueAccent,
                //     radius: Consts.avatarRadius,
                //   ),
                // ),
               Container(
  padding: EdgeInsets.only(
    top: Consts.avatarRadius + Consts.padding,
    bottom: Consts.padding,
    left: Consts.padding,
    right: Consts.padding,
  ),
  margin: EdgeInsets.only(top: Consts.avatarRadius),
  decoration: new BoxDecoration(
    color: Colors.white,
    shape: BoxShape.rectangle,
    borderRadius: BorderRadius.circular(Consts.padding),
    boxShadow: [
      BoxShadow(
        color: Colors.black26,
        blurRadius: 10.0,
        offset: const Offset(0.0, 10.0),
      ),
    ],
  ),
  child: Column(
    mainAxisSize: MainAxisSize.min, // To make the card compact
    children: <Widget>[
      Text(
        title,
        style: TextStyle(
          fontSize: 24.0,
          fontWeight: FontWeight.w700,
        ),
      ),
      SizedBox(height: 16.0),
      Text(
        descriptior,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 16.0,
        ),
      ),
      SizedBox(height: 24.0),
      Align(
        alignment: Alignment.bottomRight,
        child: FlatButton(
          onPressed: () {
            Navigator.of(context).pop(); // To close the dialog
          },
          child: Text(buttonText),
        ),
      ),
    ],
  ),
),
              ],
            );
      }
     