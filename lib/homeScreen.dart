import 'package:flutter/material.dart';
import 'package:fravel/destinationCarousel.dart';
import 'package:fravel/header.dart';
import 'package:fravel/tabs.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 80),
        child: Column(
          children: <Widget>[
            Container(margin: EdgeInsets.only(bottom: 30), child: Header()),
            DestinationCarousel(),
            Tabs()
          ],
        ),
      ),
    );
  }
}
