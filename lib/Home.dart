import 'package:flutter/material.dart';
import 'common.dart';



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



