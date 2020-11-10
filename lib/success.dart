import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
class SuccessPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.white,
      body: Container(
      
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          
       children: <Widget>[
          SizedBox(height: 50.0),
              Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical:0.0),
              child:Icon(Icons.check_circle,
              size: 80,
              color:HexColor("#5EAD34"),
              
              )
              ,),
      SizedBox(height: 20.0),
         Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 0.0),
              child:Text(
                    'Your Profile has been updated! ',
                    style:
                        TextStyle(color: Colors.black, fontSize: 25),
                  ),),
         SizedBox(height: 250.0),
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
                            color: HexColor("#5EAD34"),
                            borderRadius: new BorderRadius.circular(9.0)),
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SuccessPage()));
                          },
                          child: Text("Start Exploring",
                              style: new TextStyle(
                                  fontSize: 20.0, 
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white),
                                  ),
                        )),
                  ),
                ),
              ],
            ),
       ],

        )
      ),
    );
  }
}
