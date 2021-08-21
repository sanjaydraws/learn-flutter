
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/color/CustomColor.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);


  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColor.BlackColor,
          automaticallyImplyLeading: false,
          title: Text("Title"),
        leading:GestureDetector(
          onTap: (){
            print("on Tap");
          },
          child: Icon(
            Icons.menu
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.all(20.0),
            child: GestureDetector(
              onTap: (){
                print("settings");
              },
              child: Icon(
                Icons.settings
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20.0),
            child: GestureDetector(
              onTap: (){
                print("more");
              },
              child: Icon(
                  Icons.more_vert
              ),
            ),
          )
        ],
        //to change icon theme
        actionsIconTheme: IconThemeData(
          color: CustomColor.PrimaryColor,
            opacity: 10.0,
          size: 28,
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            Container(
              margin:EdgeInsets.all(24),
              child: FlatButton(
                child: Text(
                  "Button 1",
                  style: TextStyle(fontSize: 20.0),
                ),
                onPressed: (){},
              ),
            ),
            Container(
              margin: EdgeInsets.all(23),
              child: FlatButton(
                child: Text(
                  "Button 2",
                  style: TextStyle(
                      fontSize: 23.0
                  ),
              ),
                color: Colors.purple,
                textColor: Colors.black,
                onPressed: (){},
                padding: EdgeInsets.all(23),
            )
            )
          ],
        ),

      ),
    );
  }
}
