import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:hexcolor/hexcolor.dart';
import 'login.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
    
      home: SplashScreen(
    
        routeName: "/",
        seconds: 7,
        navigateAfterSeconds: LoginPage(),
        image: Image.asset('assets/logo.png', height: 100),
        backgroundColor: HexColor("#197419"),
        photoSize: 100.0,
        loaderColor: Colors.greenAccent[100],
      ),
    );
  }
}

