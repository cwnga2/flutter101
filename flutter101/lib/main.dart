import 'dart:ffi';

import 'package:flutter/material.dart';
import 'ListTitleDemoPage.dart';
import 'ListViewBuilderDemoPage.dart';

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
    ChildPage(name: 'ListTitleDemoPage', childPageWidget: ListTitleDemoPage()),
    ChildPage(
        name: 'ListViewBuilderDemoPage',
        childPageWidget: ListViewBuilderDemoPage()),
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
          onTap: () => {this.pushToDemoPage(context, listItems[index])},
        );
      },
    ));
  }

  Void pushToDemoPage(BuildContext context, ChildPage listItem) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => listItem.childPageWidget),
    );
  }
}

//產品資料
class ChildPage {
  final String name;
  final StatelessWidget childPageWidget;
  ChildPage({this.name, this.childPageWidget});
}
