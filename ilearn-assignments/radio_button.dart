import 'package:flutter/material.dart';

void main() => runApp(RadioGroupApp());

class RadioGroupApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: RadioPage());
  }
}

class RadioPage extends StatefulWidget {
  @override
  _RadioPageState createState() => _RadioPageState();
}

class _RadioPageState extends State<RadioPage> {
  String? selected = "Option 1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Multiple Radio Groups")),
      body: Column(
        children: [
          RadioListTile<String>(
            title: Text("Option 1"),
            value: "Option 1",
            groupValue: selected,
            onChanged: (value) => setState(() => selected = value),
          ),
          RadioListTile<String>(
            title: Text("Option 2"),
            value: "Option 2",
            groupValue: selected,
            onChanged: (value) => setState(() => selected = value),
          ),
          Text("Selected: $selected"),
        ],
      ),
    );
  }
}