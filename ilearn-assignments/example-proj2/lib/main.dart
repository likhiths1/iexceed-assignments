import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() => runApp(MyWidgetShowcaseApp());

class MyWidgetShowcaseApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter UI Widgets Demo',
      theme: ThemeData(primarySwatch: Colors.indigo),
      home: HomeScreen(),
    );
  }
}
