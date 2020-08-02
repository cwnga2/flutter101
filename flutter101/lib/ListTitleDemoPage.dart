import 'package:flutter/material.dart';

class ListTitleDemoPage extends StatelessWidget {
  List<Widget> list = <Widget>[
    ListTile(
      title: Text(
        '12345678901234567890123456789012345678901234567890123456789012345678901234567890',
        style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20.0),
      ),
      subtitle: Text('測試內容一'),
      isThreeLine: false,
      //  "https://ct.yimg.com/xd/api/res/1.2/y5oiO6t19T42ELAOiMV3oA--/YXBwaWQ9eXR3YXVjdGlvbnNlcnZpY2U7aD00OTY7cT04NTtyb3RhdGU9YXV0bzt3PTUyMQ--/https://s.yimg.com/ob/image/6d2bd824-3071-4f5c-9bee-ac75f0a61bad.jpg"
      leading: Image.network(
        "https://ct.yimg.com/xd/api/res/1.2/y5oiO6t19T42ELAOiMV3oA--/YXBwaWQ9eXR3YXVjdGlvbnNlcnZpY2U7aD00OTY7cT04NTtyb3RhdGU9YXV0bzt3PTUyMQ--/https://s.yimg.com/ob/image/6d2bd824-3071-4f5c-9bee-ac75f0a61bad.jpg",
        fit: BoxFit.cover,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('List view'),
        ),
        body: Center(
          //列表元件
          child: ListView(
            children: list,
          ),
        ));
  }
}
