import 'package:flutter/material.dart';
import 'pages/main_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget
{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp
    (
      title: 'codename-big-mootz',
      theme: ThemeData(primarySwatch: Colors.grey),
      home: MainPage(),
    );
  }
}