import 'dart:ffi';

import 'package:flutter/material.dart';
import 'ListViewPage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('tutorial'),
      ),
      body: HomePage(),
    ));
  }
}

class HomePage extends StatelessWidget {
  //透過資料產生器，產生資料
  final List<ChildPage> listItems = [
    new ChildPage(name: '1212', childPage: 'test11')
  ];

  @override
  Widget build(BuildContext context) {
    return Center(
        child: ListView.builder(
      itemCount: listItems.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: Icon(Icons.event_seat),
          title: Text('${listItems[index].name}'),
          onTap: () => {this.test(context, listItems[index])},
        );
      },
    ));
  }

  Void test(BuildContext context, ChildPage listItem) {
    print(listItem);
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => ListViewPage()),
    );
  }
}

//產品資料
class ChildPage {
  final String name;
  final String childPage;
  ChildPage({this.name, this.childPage});
}
