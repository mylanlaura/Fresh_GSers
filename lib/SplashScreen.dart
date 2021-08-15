import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:untitled2/loginscreen.dart';

class SplashScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return StartState();
}}

class StartState extends State<SplashScreen>{
  @override
  void initState(){
    super.initState();
    startTimer();
  }
  startTimer() async{
    var duration = Duration(seconds: 3);
    return Timer(duration, route);
  }
  route(){
    Navigator.pushReplacement(context, MaterialPageRoute(
        builder: (context) => LoginScreen()));
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: double.infinity,
          height: double.infinity,
              child: Image.asset("images/splash.png", fit: BoxFit.cover,),
        ),
      ),
    );
  }
}