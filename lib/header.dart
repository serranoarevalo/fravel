import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
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
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
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
        ),
        Container(
          width: 45,
          height: 45,
          decoration: BoxDecoration(
              shape: BoxShape.circle,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      "https://cdn-images-1.medium.com/fit/c/32/32/1*ZRTyJhRlX1MGCKNOQiqJsg.jpeg"))),
        ),
      ],
    );
  }
}
