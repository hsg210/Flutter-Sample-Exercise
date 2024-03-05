// 這是一個使用Flutter框架開發的簡單應用程序，包含一個主屏幕和一個自定義的內容體部分。
// 主屏幕有一個標題為"這是改變checkbox狀態範例"的AppBar和一個內容體，內容體中包含一個Checkbox和一個文本。
// Checkbox允許用戶通過點擊來改變其狀態，並且狀態的變化會即時反映在UI上。
import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeContent(),
    );
  }
}

class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("這是改變checkbox狀態範例"),
        ),
        body: ContentBody());
  }
}

class ContentBody extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ContentBodyState();
  }
}

class ContentBodyState extends State<ContentBody> {
  var flag = true;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Checkbox(
            value: flag,
            onChanged: (value) {
              setState(() {
                if (value != null) {
                  // 檢查value是否為null
                  flag = value; // 只有當value不為null時才進行賦值
                }
              });
            },
          ),
          Text("改變Checkbox狀態", style: TextStyle(fontSize: 20))
        ],
      ),
    );
  }
}
