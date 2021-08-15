import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:untitled2/loginscreen.dart';
import 'package:untitled2/provider/provider.dart';

import 'SplashScreen.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => MyProvider(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      home: SplashScreen(),
    );
  }
}


