import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'MyCountChangeNotifier.dart';

class MVVMDemo3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider.value(value: MyCountChangeNotifier())],
      // child: Scaffold(
      //   appBar: AppBar(
      //     title: Text('List view'),
      //   ),
      //   body: HomePage(),
      // )
      // child: MaterialApp(title: 'Provider Demo', home: HomePage()
      //     //initialRoute: '/'
      //     // routes: {
      //     //   '/': (context) => HomePage(),
      //     //   '/b': (context) => BPage(),
      //     // },
      //     ),
      child: HomePage(),
    );
  }
}

//
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //透過 Provider.of 來獲取資料
    final counter = Provider.of<MyCountChangeNotifier>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('HKT 線上教室'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '目前計數值: ${counter.count}',
            ),
            RaisedButton(
              // //點擊按鈕後，導轉跳到B頁
              // onPressed: () => Navigator.of(context).push(
              //   MaterialPageRoute(builder: (context) => BPage()),
              // ),
              onPressed: () {
                // Navigator.of(context).push(
                //   MaterialPageRoute(builder: (context) => BPage()),
                // );

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
          ],
        ),
      ),
    );
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
