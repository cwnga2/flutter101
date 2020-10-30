import 'package:flutter/material.dart';
import 'list_view_title/ListTitleDemoPage.dart';
import 'ListViewBuilderDemoPage.dart';
import 'StatefulDemoPage.dart';
import './location_detail/location_detail.dart';
import './style.dart';
import 'mvvm/MVVMdemo.dart';
import 'mvvm/MVVMdemo2.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
            appBarTheme: AppBarTheme(
                textTheme: TextTheme(
          headline6: AppBarTextStyle,
        ))),
        home: Scaffold(
          appBar: AppBar(
            title: Text('tutorial'),
          ),
          body: HomePage(),
        ));
  }
}

class HomePage extends StatelessWidget {
  final List<ChildPage> listItems = [
    ChildPage(name: 'ListTitleDemoPage', childPageWidget: ListTitleDemoPage()),
    ChildPage(
        name: 'ListViewBuilderDemoPage',
        childPageWidget: ListViewBuilderDemoPage()),
    ChildPage(name: 'StatefulDemoPage', childPageWidget: StatefulDemoPage()),
    ChildPage(name: 'location', childPageWidget: LocationDetail()),
    ChildPage(name: 'MVVMDemo', childPageWidget: MVVMDemo()),
    ChildPage(name: 'MVVMDemo2', childPageWidget: MVVMDemo2()),
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

  void pushToDemoPage(BuildContext context, ChildPage listItem) {
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => listItem.childPageWidget),
    );
  }
}

//產品資料
class ChildPage {
  final String name;
  final Widget childPageWidget;
  ChildPage({this.name, this.childPageWidget});
}
