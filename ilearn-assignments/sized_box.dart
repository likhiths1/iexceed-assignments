import 'package:flutter/material.dart';

void main() => runApp(SizedBoxAdvanced());

class SizedBoxAdvanced extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SizedBox Advanced Example',
      home: Scaffold(
        appBar: AppBar(title: Text("Responsive Grid with SizedBox")),
        body: LayoutBuilder(
          builder: (context, constraints) {
            double itemWidth = constraints.maxWidth / 2 - 24;
            return GridView.builder(
              padding: const EdgeInsets.all(12),
              itemCount: 6,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 12,
                crossAxisSpacing: 12,
                childAspectRatio: 1,
              ),
              itemBuilder: (context, index) {
                return SizedBox(
                  width: itemWidth,
                  child: Card(
                    color: Colors.teal[100 * ((index % 8) + 1)],
                    child: Center(child: Text('Item ${index + 1}')),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}