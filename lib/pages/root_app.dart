
import 'package:flutter/material.dart';

class RootApp extends StatefulWidget {
  const RootApp({super.key});

  @override
  State<RootApp> createState() => _RootAppState();
}

class _RootAppState extends State<RootApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // bottomNavigationBar: getFooter(),
    );
  }

  // Widget getFooter() {
  //   return BottomNavigationBar(items: items);
  // }
}
