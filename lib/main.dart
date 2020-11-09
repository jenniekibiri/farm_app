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
        //number of seconds the splash screen will show
        routeName: "/",
        seconds: 7,
        //Page to show after splash screen
        navigateAfterSeconds: LoginPage(),

        //Our logo that we have imported in step 2
        image: new Image.asset('assets/logo.png', height: 100),
        //Splash Screen Background color

        backgroundColor: HexColor("#197419"),
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        loaderColor: Colors.greenAccent[100],
      ),
    );
  }
}

