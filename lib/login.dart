import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'Home.dart';
import 'common.dart';
import 'Register.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          child: ClipPath(
            clipper: CustomAppBar(),
            child: Container(
              color: Colors.white,
               child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                   Image.asset('assets/logo.png', height: 100),
                
                ],
              ),
           
            ),
          ),
          preferredSize: Size.fromHeight(kToolbarHeight + 250)),
      body: Container(
        //container helps in positioning items
        child: Column(
            
          children: <Widget>[
            
 Align(
      alignment: Alignment.centerLeft,

      child: Container(
        
            margin: new EdgeInsets.all(20.0),
        child: Text(
          "Login with Email",
           style: TextStyle(color: Colors.black, fontSize: 25),
        ),
      ),
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
