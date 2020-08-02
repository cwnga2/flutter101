import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ListViewBuilderDemoPage extends StatelessWidget {
  final List<Map<String, String>> listItems =
      new List<Map<String, String>>.generate(10, (i) {
    return {
      "title": "title - " + i.toString(),
    };
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List view'),
        ),
        body: ListView.builder(
          itemCount: listItems.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text(listItems[index]["title"]),
            );
          },
        ));
  }
}
