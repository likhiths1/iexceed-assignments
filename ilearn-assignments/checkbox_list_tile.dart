import 'package:flutter/material.dart';

void main() => runApp(TermsApp());

class TermsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: TermsPage());
  }
}

class TermsPage extends StatefulWidget {
  @override
  _TermsPageState createState() => _TermsPageState();
}

class _TermsPageState extends State<TermsPage> {
  bool accepted = false;

  void _submit() {
    if (!accepted) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Accept terms to proceed")));
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("Submitted")));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Accept Terms")),
      body: Column(
        children: [
          CheckboxListTile(
            title: Text("I accept the Terms and Conditions"),
            value: accepted,
            onChanged: (val) => setState(() => accepted = val!),
          ),
          ElevatedButton(onPressed: _submit, child: Text("Submit")),
        ],
      ),
    );
  }
}