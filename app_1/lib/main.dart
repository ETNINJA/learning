import 'package:flutter/material.dart';

import 'screens/homepage.dart';
import 'myTheme.dart';

void main() {
  runApp(MyApp());
}
// void main() => runApp(MyApp())

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //title: 'Flutter Demo',
      theme: myTheme,
      home: Homepage(), // Scaffold()
      debugShowCheckedModeBanner: false,
    );
  }
}
