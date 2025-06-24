import 'package:flutter/material.dart';

void main() => runApp(GenderSelectionApp());

class GenderSelectionApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: GenderForm());
  }
}

class GenderForm extends StatefulWidget {
  @override
  _GenderFormState createState() => _GenderFormState();
}

class _GenderFormState extends State<GenderForm> {
  String gender = "Male";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Gender Selection")),
      body: Column(
        children: [
          RadioListTile(
            title: Text("Male"),
            value: "Male",
            groupValue: gender,
            onChanged: (val) => setState(() => gender = val!),
          ),
          RadioListTile(
            title: Text("Female"),
            value: "Female",
            groupValue: gender,
            onChanged: (val) => setState(() => gender = val!),
          ),
          Text("Selected: $gender")
        ],
      ),
    );
  }
}