import 'package:flutter/material.dart';

import 'navpages/main_page.dart';
import 'navpages/shop.dart';

void main() {
  runApp( MaterialApp(
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      brightness: Brightness.light,
      primarySwatch: Colors.blue,
    ),
    home: MainPage(),
  ));
}


