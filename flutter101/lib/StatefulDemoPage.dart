import 'package:flutter/material.dart';

//1. create StatefulWidget, override createState
class StatefulDemoPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return StatefullPageDemoState();
  }
}

//2. create state belone to StatefulDemoPage and own property
//3. overrade buld method

class StatefullPageDemoState extends State<StatefulDemoPage> {
  var title = DateTime.now().toIso8601String();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text("test")),
        body: ListView(
          children: [
            Text(title),
            RaisedButton(
              child: Text("show now time"),
              onPressed: () {
                setState(() {
                  var dateTime = DateTime.now().toIso8601String();
                  title = dateTime;
                });
              },
            )
          ],
        ));
  }
}
