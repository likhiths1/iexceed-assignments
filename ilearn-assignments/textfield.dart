import 'package:flutter/material.dart';

void main() => runApp(TextFieldAdvanced());

class TextFieldAdvanced extends StatelessWidget {
  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text("TextField Actions")),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            controller: _controller,
            textInputAction: TextInputAction.done,
            onSubmitted: (value) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("You typed: $value")),
              );
            },
            decoration: InputDecoration(
              labelText: 'Type and press Done',
              border: OutlineInputBorder(),
            ),
          ),
        ),
      ),
    );
  }
}