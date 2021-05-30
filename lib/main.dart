import 'package:flutter/material.dart';

import 'pages/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Munyaradzi Chigangawa',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Muli',
        textTheme: TextTheme(
            headline6: TextStyle(fontFamily: 'Muli', 
            color: Colors.grey[900],
            fontWeight: FontWeight.w700, 
            fontSize: 18),
          ),
      ),
      home: Home(),
    );
  }
}