import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'MyCountChangeNotifier.dart';

class MVVMDemo2 extends StatelessWidget {
  //透過 Provider.of 來獲取資料

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List view'),
        ),
        body: Column(
          children: [
            Text("test"),
            RaisedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => BPage()),
                );
              },
              child: Text('跳到B頁'),
            ),
          ],
        ));
  }
}

class BPage extends StatelessWidget {
  //透過 Provider.of 來獲取資料

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List view2'),
        ),
        body: Column(
          children: [
            Text("test"),
            RaisedButton(
              onPressed: () {},
              child: Text('add count'),
            ),
          ],
        ));
  }
}
