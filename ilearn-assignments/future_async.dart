import 'package:flutter/material.dart';

void main() => runApp(AsyncFutureApp());

class AsyncFutureApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: AsyncPage());
  }
}

class AsyncPage extends StatelessWidget {
  Future<String> loadData() async {
    await Future.delayed(Duration(seconds: 2));
    return "Data loaded!";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("FutureBuilder Example")),
      body: Center(
        child: FutureBuilder<String>(
          future: loadData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasData) {
              return Text(snapshot.data!);
            } else {
              return Text("Error loading data");
            }
          },
        ),
      ),
    );
  }
}