import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

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
        navigateAfterSeconds: MainPage(),

        //Our logo that we have imported in step 2
        image: new Image.asset('assets/logo.png'),
        //Splash Screen Background color

        backgroundColor: Colors.green[300],
        styleTextUnderTheLoader: new TextStyle(),
        photoSize: 100.0,
        loaderColor: Colors.greenAccent[100],
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Coding Ninja"),
        automaticallyImplyLeading: false,
      ),
      body: new Center(
        child: new Text(
          "Main Screen After Splash",
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
        ),
      ),
    );
  }
}
