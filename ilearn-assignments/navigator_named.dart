import 'package:flutter/material.dart';

void main() => runApp(NamedNavigationApp());

class NamedNavigationApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (_) => HomePage(),
        '/details': (_) => DetailsPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  final String data = "Hello Named Routes";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Named Route Home")),
      body: Center(
        child: ElevatedButton(
          child: Text("Go to Details"),
          onPressed: () {
            Navigator.pushNamed(
              context,
              '/details',
              arguments: data,
            );
          },
        ),
      ),
    );
  }
}

class DetailsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String message = ModalRoute.of(context)!.settings.arguments as String;
    return Scaffold(
      appBar: AppBar(title: Text("Details Page")),
      body: Center(child: Text("Received: $message")),
    );
  }
}