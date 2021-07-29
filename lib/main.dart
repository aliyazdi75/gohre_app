import 'package:flutter/material.dart';
import 'package:grohe_app/screens/home/home.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Grohe Application',
      debugShowCheckedModeBanner: false,
      home: HomeNavigation(),
    );
  }
}
