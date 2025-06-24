import 'package:flutter/material.dart';

void main() => runApp(SnackBarUndoApp());

class SnackBarUndoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: UndoPage());
  }
}

class UndoPage extends StatefulWidget {
  @override
  _UndoPageState createState() => _UndoPageState();
}

class _UndoPageState extends State<UndoPage> {
  String text = "Initial";

  void _changeText() {
    final oldText = text;
    setState(() => text = "Updated");

    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text("Text changed"),
        action: SnackBarAction(
          label: "Undo",
          onPressed: () => setState(() => text = oldText),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("SnackBar with Undo")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Text: $text"),
            ElevatedButton(onPressed: _changeText, child: Text("Change Text")),
          ],
        ),
      ),
    );
  }
}