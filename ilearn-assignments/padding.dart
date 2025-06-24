import 'package:flutter/material.dart';

void main() => runApp(AdvancedPaddingExample());

class AdvancedPaddingExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("Complex Layout with Padding")),
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                color: Colors.amberAccent,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 24.0, horizontal: 16.0),
                  child: Text("Symmetric Padding Example"),
                ),
              ),
              SizedBox(height: 20),
              Container(
                color: Colors.lightGreen,
                child: Padding(
                  padding: EdgeInsets.only(left: 30.0, top: 10),
                  child: Text("Asymmetric Padding Example"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}