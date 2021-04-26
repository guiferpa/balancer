import 'package:flutter/material.dart';
import 'package:balancer/pages/home.dart';

void main() {
  runApp(App());
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Balancer",
      theme: ThemeData(),
      home: HomePage(),
    );
  }
}

