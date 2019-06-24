import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart' show timeDilation;

import 'package:fravel/destinationDetail.dart';
import 'package:fravel/homeScreen.dart';

void main() {
  timeDilation = 5.0;
  runApp(MaterialApp(
    home: HomeScreen(),
    routes: {Detail.routeName: (context) => Detail()},
  ));
}
