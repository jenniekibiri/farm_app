import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _bottomNavIndex=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(

bottomNavigationBar: BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
  fixedColor: Color(0XFF29D091),
       currentIndex: _bottomNavIndex,
        onTap: (int index){
          setState((){
            _bottomNavIndex = index;
            
          });
         },
  items: [
          new BottomNavigationBarItem(
            title: new Text('Home'),
             icon: new Icon(Icons.home)
          ),
          new BottomNavigationBarItem(
            title: new Text('my crops'),
             icon: new Icon(Icons.veg)
          ),
          new BottomNavigationBarItem(
            title: new Text('sell'),
             icon: new Icon(Icons.local_grocery_store)
          ),
          new BottomNavigationBarItem(
            title: new Text('profile'),
             icon: new Icon(Icons.person)
          )

        ],
  ),



      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              child: Column(
                children: <Widget>[
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.person,
                      size: 80,
                      color: Colors.white,
                    ),
                  ),
                  Row(
                    children: <Widget>[
                      
                      Padding(
                           padding: EdgeInsets.symmetric(horizontal: 11.0, vertical: 0.0), 
                          child: Text('Jane Doe',
                          style: TextStyle(color: Colors.grey[100]),
                          ),
                          ),
                    ],
                  ),

                ],
              ),
              decoration: BoxDecoration(
                color: HexColor("#5EAD34"),
              ),
            ),
            ListTile(
              title:   Row(
                    children: <Widget>[
                       Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.person,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                      Padding(
                           padding: EdgeInsets.symmetric(horizontal: 11.0, vertical: 0.0), 
                          child: Text('Profile',
                          
                          style: TextStyle(color: Colors.black),
                          
                          ),
                          ),
                    ],
                  ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            
           ListTile(
              title:   Row(
                    children: <Widget>[
                       Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.history,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                      Padding(
                           padding: EdgeInsets.symmetric(horizontal: 11.0, vertical: 0.0), 
                          child: Text('Sell/Buy History',
                          
                          style: TextStyle(color: Colors.black),
                          
                          ),
                          ),
                    ],
                  ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
           
            ListTile(
              title:   Row(
                    children: <Widget>[
                       Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.home,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                      Padding(
                           padding: EdgeInsets.symmetric(horizontal: 11.0, vertical: 0.0), 
                          child: Text('My Farm',
                          
                          style: TextStyle(color: Colors.black),
                          
                          ),
                          ),
                    ],
                  ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title:   Row(
                    children: <Widget>[
                       Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.settings,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                      Padding(
                           padding: EdgeInsets.symmetric(horizontal: 11.0, vertical: 0.0), 
                          child: Text('settings',
                          
                          style: TextStyle(color: Colors.black),
                          
                          ),
                          ),
                    ],
                  ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
             Divider(
                  color: Colors.black,
                ),
                ListTile(
              title:   Row(
                    children: <Widget>[
                       Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.help,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                      Padding(
                           padding: EdgeInsets.symmetric(horizontal: 11.0, vertical: 0.0), 
                          child: Text('Help center',
                          
                          style: TextStyle(color: Colors.black),
                          
                          ),
                          ),
                    ],
                  ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
            ListTile(
              title:   Row(
                    children: <Widget>[
                       Align(
                    alignment: Alignment.centerLeft,
                    child: Icon(
                      Icons.power_settings_new,
                      size: 30,
                      color: Colors.black,
                    ),
                  ),
                      Padding(
                           padding: EdgeInsets.symmetric(horizontal: 11.0, vertical: 0.0), 
                          child: Text('Logout',
                          
                          style: TextStyle(color: Colors.black),
                          
                          ),
                          ),
                    ],
                  ),
              onTap: () {
                // Update the state of the app.
                // ...
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: HexColor("#5EAD34"),
        title: Text('Farm to market'),
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.search,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: Icon(
              Icons.notifications,
              color: Colors.white,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: new Center(
        child: new Text(
          "Home page",
          style: new TextStyle(fontWeight: FontWeight.bold, fontSize: 30.0),
        ),
      ),
    );
  }
}
