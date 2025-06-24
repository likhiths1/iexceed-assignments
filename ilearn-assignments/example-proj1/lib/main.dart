import 'package:flutter/material.dart';
import 'package:project1/AlignScreen.dart';
import 'package:project1/AppBarScreen.dart';
import 'package:project1/ContainerScreen.dart';
import 'package:project1/ExpandedScreen.dart';
import 'package:project1/ListTileScreen.dart';
import 'package:project1/ListViewBuilderScreen.dart';
import 'package:project1/MAterialAppScreen.dart';

void main() => runApp(MyCombinedApp());

class MyCombinedApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Component Examples',
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<Map<String, dynamic>> features = [
    {'title': 'MaterialApp Demo', 'widget': MaterialAppScreen()},
    {'title': 'AppBar Demo', 'widget': AppBarScreen()},
    {'title': 'Container Demo', 'widget': ContainerScreen()},
    {'title': 'Align Demo', 'widget': AlignScreen()},
    {'title': 'ListTile & ListView Demo', 'widget': ListTileScreen()},
    {'title': 'ListView.builder Demo', 'widget': ListViewBuilderScreen()},
    {'title': 'Expanded Widget Demo', 'widget': ExpandedScreen()},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Flutter Widgets Menu')),
      body: ListView.builder(
        itemCount: features.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(features[index]['title']),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => features[index]['widget']),
              );
            },
          );
        },
      ),
    );
  }
}
