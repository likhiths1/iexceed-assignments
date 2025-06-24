import 'package:flutter/material.dart';

void main() => runApp(DynamicDropdownApp());

class DynamicDropdownApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: DynamicDropdownPage());
  }
}

class DynamicDropdownPage extends StatefulWidget {
  @override
  _DynamicDropdownPageState createState() => _DynamicDropdownPageState();
}

class _DynamicDropdownPageState extends State<DynamicDropdownPage> {
  String selectedState = "California";
  Map<String, List<String>> cities = {
    "California": ["LA", "SF", "SD"],
    "Texas": ["Dallas", "Austin", "Houston"]
  };
  String? selectedCity;

  @override
  Widget build(BuildContext context) {
    List<String> cityList = cities[selectedState]!;

    return Scaffold(
      appBar: AppBar(title: Text("State and City Dropdown")),
      body: Column(
        children: [
          DropdownButton<String>(
            value: selectedState,
            items: cities.keys
                .map((state) => DropdownMenuItem(value: state, child: Text(state)))
                .toList(),
            onChanged: (value) => setState(() {
              selectedState = value!;
              selectedCity = null;
            }),
          ),
          DropdownButton<String>(
            value: selectedCity,
            hint: Text("Select City"),
            items: cityList.map((city) => DropdownMenuItem(value: city, child: Text(city))).toList(),
            onChanged: (value) => setState(() => selectedCity = value),
          ),
        ],
      ),
    );
  }
}