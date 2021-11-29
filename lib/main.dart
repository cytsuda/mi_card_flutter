import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.transparent,
              child: Image(
                image: AssetImage("images/ylogo.png"),
              ),
            ),
            Text(
              "Yoshio Tsuda",
              style: TextStyle(
                  fontSize: 40,
                  fontFamily: 'Vampiro One',
                  fontWeight: FontWeight.bold,
                  color: Colors.yellow,
                  shadows: <Shadow>[
                    Shadow(
                      offset: Offset(1, -1.0),
                      blurRadius: 3.0,
                      color: Colors.cyanAccent,
                    ),
                    Shadow(
                      offset: Offset(-1, 1.0),
                      blurRadius: 3.0,
                      color: Colors.pinkAccent,
                    ),
                  ]),
            ),
            Text("Front-end Developer".toUpperCase(),
                style: TextStyle(
                    fontSize: 20,
                    fontFamily: "SourceSansPro",
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.5,
                    color: Colors.teal.shade200)),
            SizedBox(
              height: 25,
              width: 180,
              child: Divider(
                color: Colors.teal.shade100,
              ),
            ),
            Card(
              margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
              child: ListTile(
                leading: Icon(
                  Icons.mail,
                  color: Colors.teal,
                ),
                title: Text(
                  "cyt231@gmail.com",
                  style: TextStyle(
                      color: Colors.teal,
                      fontFamily: "SourceSansPro",
                      fontSize: 20),
                ),
              ),
            ),
            Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                child: ListTile(
                    leading: Icon(Icons.mail, color: Colors.teal),
                    title: Text("This is a text",
                        style: TextStyle(
                            color: Colors.teal,
                            fontFamily: "SourceSansPro",
                            fontSize: 20))))
          ],
        )),
      ),
    );
  }
}
