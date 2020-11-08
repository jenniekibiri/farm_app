import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';
import 'package:hexcolor/hexcolor.dart';

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

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: ClipPath(
            clipper: CustomAppBar(),
            child: Container(
              color: HexColor("#197419"),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Farm to market',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ],
              ),
            ),
          ),
          preferredSize: Size.fromHeight(kToolbarHeight + 250)),
      body: Container(
        //container helps in positioning items
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Login with Email',
              style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 25),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: TextField(
                decoration: InputDecoration(labelText: 'Email'),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(labelText: 'password'),
              ),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 5.0, top: 10.0),
                    child: new Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        decoration: new BoxDecoration(
                            color: HexColor("#197419"),
                            borderRadius: new BorderRadius.circular(9.0)),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                          child: Text("Login",
                              style: new TextStyle(
                                  fontSize: 20.0, color: Colors.white)),
                        )),
                  ),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 5.0, top: 10.0),
                    child: new Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegisterPage()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Don\'t have an account?',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                              Text(
                                'Don\'t have an account?',
                                style: TextStyle(
                                    color: HexColor("#197419"), fontSize: 15),
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: ClipPath(
            clipper: CustomAppBar(),
            child: Container(
              color: Colors.grey[400],
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Curved AppBar Exemple',
                    style:
                        TextStyle(color: Colors.deepOrangeAccent, fontSize: 25),
                  ),
                  Text(
                    'text to add optionnal',
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ),
          preferredSize: Size.fromHeight(kToolbarHeight + 250)),
      body: new Center(
        child: new Text(
          "Home page",
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
        ),
      ),
    );
  }
}

class CustomAppBar extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = new Path();

    path.lineTo(0, size.height);
    path.quadraticBezierTo(
        size.width / 4, size.height - 40, size.width / 2, size.height - 20);

    path.quadraticBezierTo(
        3 / 4 * size.width, size.height, size.width, size.height - 20);

    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

class RegisterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: ClipPath(
            clipper: CustomAppBar(),
            child: Container(
              color: HexColor("#197419"),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Farm to market',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                ],
              ),
            ),
          ),
          preferredSize: Size.fromHeight(kToolbarHeight + 250)),
      body: Container(
        //container helps in positioning items
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
              'Login with Email',
              style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 25),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: TextField(
                decoration: InputDecoration(labelText: 'Email'),
              ),
            ),
            SizedBox(
              height: 15.0,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child: TextField(
                obscureText: true,
                decoration: InputDecoration(labelText: 'password'),
              ),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 5.0, top: 10.0),
                    child: new Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        decoration: new BoxDecoration(
                            color: HexColor("#197419"),
                            borderRadius: new BorderRadius.circular(9.0)),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => HomePage()));
                          },
                          child: Text("Register",
                              style: new TextStyle(
                                  fontSize: 20.0, color: Colors.white)),
                        )),
                  ),
                ),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 5.0, top: 10.0),
                    child: new Container(
                        alignment: Alignment.center,
                        height: 60.0,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Already Registered?',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 15),
                              ),
                              Text(
                                'Login',
                                style: TextStyle(
                                    color: HexColor("#197419"), fontSize: 15),
                              ),
                            ],
                          ),
                        )),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
