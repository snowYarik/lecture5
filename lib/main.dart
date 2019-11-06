import 'package:flutter/material.dart';
import 'package:lecture5/widgets/create_place_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lecture5',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        accentColor: Colors.amber,
        textTheme: TextTheme(
          title: TextStyle(
            fontFamily: 'GoogleSans',
            fontWeight: FontWeight.bold,
            fontSize: 16.0,
          ),
        ),
      ),
      home: CreatePlacePage(),
    );
  }
}
