

import 'package:flutter/material.dart';
import 'package:untitled2/Menu.dart';
import 'package:untitled2/Supermaket.dart';
class MainPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: NetworkImage('https://scontent.fhph1-2.fna.fbcdn.net/v/t39.30808-6/236370538_1402736026778167_4182726506919361444_n.jpg?_nc_cat=106&ccb=1-5&_nc_sid=730e14&_nc_ohc=WpC85URYiWsAX8sU72q&_nc_ht=scontent.fhph1-2.fna&oh=dc5cf755a1c1a3d545fcda4a331e14df&oe=611BA577'),
                    fit: BoxFit.fill,
                  ),
                ),
              ),
              Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    _menu(context),

                    _supermaket(context),
                  ],
                ),
              ),
            ]));
  }

  Widget _menu(BuildContext context) {
    return Padding(
        padding:  EdgeInsets.all(8),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Container(
                child: ButtonTheme(
                  height: 50,
                  minWidth: 200.0,
                  child: RaisedButton(

                    elevation: 5.0,
                    color: Color.fromRGBO(255, 235, 131, 1.0),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> Menu()),);},
                    child: Text(
                      'SUPERMARKET',
                      style: TextStyle(
                        color: Color.fromRGBO(149, 20, 20, 1.0),
                        letterSpacing: 1.5,
                        fontSize: 24,
                      ),),
                  ),
                )

            )
          ],
        ));
  }
  Widget _supermaket(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.all(12),
      child:Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Container(
              child: ButtonTheme(
                height: 50,
                minWidth: 200.0,
                child: RaisedButton(

                  elevation: 5.0,
                  color: Color.fromRGBO(255, 235, 131, 1.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30.0),
                  ),
                  onPressed: () {Navigator.push(context, MaterialPageRoute(builder: (context)=> SuperMarket()),);},
                  child: Text(
                    'MENU',
                    style: TextStyle(
                      color: Color.fromRGBO(149, 20, 20, 1.0),
                      letterSpacing: 1.5,
                      fontSize: 24,
                    ),),
                ),
              )
          )
        ],
      ),
    );
  }
}