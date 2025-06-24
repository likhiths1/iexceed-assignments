import 'package:flutter/material.dart';

void main() => runApp(MultiCheckboxApp());

class MultiCheckboxApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MultiSelectPage());
  }
}

class MultiSelectPage extends StatefulWidget {
  @override
  _MultiSelectPageState createState() => _MultiSelectPageState();
}

class _MultiSelectPageState extends State<MultiSelectPage> {
  Map<String, bool> values = {"A": false, "B": false, "C": false};

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Multiple Checkboxes")),
      body: Column(
        children: values.keys.map((key) {
          return CheckboxListTile(
            title: Text("Option $key"),
            value: values[key],
            onChanged: (val) => setState(() => values[key] = val!),
          );
        }).toList(),
      ),
    );
  }
}