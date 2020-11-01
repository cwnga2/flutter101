import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'MyCountChangeNotifier.dart';

class MVVMDemo2 extends StatelessWidget {
  //透過 Provider.of 來獲取資料
  final counter = MyCountChangeNotifier();
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyCountChangeNotifier>(
        // 2
        create: (context) => counter,
        child: Scaffold(
            appBar: AppBar(
              title: Text('List view'),
            ),
            body: Column(children: [
              Text("test"),
              Consumer<MyCountChangeNotifier>(
                  builder: (context, model, child) => Text(
                        '目前計數值: ${counter.count}',
                      )),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ChangeNotifierProvider.value(
                          value: counter,
                          child: BPage(),
                        ),
                      ));
                },
                child: Text('跳到B頁'),
              ),
            ])));
  }
}

class BPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('B頁'),
      ),
      body: Center(
        child: Consumer<MyCountChangeNotifier>(
            builder: (context, counter, child) => Text(
                  '${counter.count}',
                )),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // 使用 Provider.of，並且將 listen 設定為 false(若沒設定，預設為 true)，
          // 則不會再次調用 Widget 重新構建（ build ）畫面 ，更省效能。
          Provider.of<MyCountChangeNotifier>(context, listen: false)
              .increment();
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
