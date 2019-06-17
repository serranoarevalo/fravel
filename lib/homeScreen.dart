import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 80),
        child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.only(bottom: 5),
                      child: Text(
                        "Search for a place",
                        style: TextStyle(
                            letterSpacing: 1,
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                            color: Colors.grey),
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Text("Destination",
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20)),
                        Container(
                          margin: EdgeInsets.only(left: 5),
                          child: Icon(
                            FontAwesomeIcons.angleDown,
                            color: Colors.grey,
                          ),
                        )
                      ],
                    )
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
