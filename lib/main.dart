import 'package:flutter/material.dart';
import 'package:weater/ui/home.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
debugShowCheckedModeBanner: false,
title: "ForeCast App",
home: HomePage(),
theme: ThemeData(
  textTheme: TextTheme(
    body1: TextStyle(
      fontSize: 20.0
    )
  )
),
    );
  }
}