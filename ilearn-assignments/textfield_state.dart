import 'package:flutter/material.dart';

void main() => runApp(SearchExample());

class SearchExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: SearchPage());
  }
}

class SearchPage extends StatefulWidget {
  @override
  _SearchPageState createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  List<String> items = ["Apple", "Banana", "Grapes", "Orange", "Pineapple"];
  String query = "";

  @override
  Widget build(BuildContext context) {
    List<String> filtered = items.where((item) => item.toLowerCase().contains(query.toLowerCase())).toList();

    return Scaffold(
      appBar: AppBar(title: Text("Search Filter")),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16),
            child: TextField(
              onChanged: (value) => setState(() => query = value),
              decoration: InputDecoration(labelText: "Search", border: OutlineInputBorder()),
            ),
          ),
          Expanded(
            child: ListView(
              children: filtered.map((item) => ListTile(title: Text(item))).toList(),
            ),
          ),
        ],
      ),
    );
  }
}