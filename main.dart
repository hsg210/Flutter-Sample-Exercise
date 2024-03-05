// 這是一個使用Flutter框架開發的簡單應用程序，包含一個主屏幕和一個自定義的內容體部分。
// 主屏幕有一個標題為"這是改變checkbox狀態範例"的AppBar和一個內容體，內容體中包含一個Checkbox和一個文本。
// Checkbox允許用戶通過點擊來改變其狀態，並且狀態的變化會即時反映在UI上。
import 'package:flutter/material.dart';

// 主函數，應用程序的入口點。
main(List<String> args) {
  runApp(MyApp());
}

// MyApp類，代表應用程序的根Widget。
class MyApp extends StatelessWidget {
  @override
  // 建構應用程序的界面。
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 移除debug標誌。
      home: HomeContent(), // 設置應用程序的首頁。
    );
  }
}

// HomeContent類，代表首頁的內容。
class HomeContent extends StatelessWidget {
  @override
  // 建構首頁的界面。
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("這是改變checkbox狀態範例"), // 設置AppBar的標題。
        ),
        body: ContentBody()); // 首頁的主體部分。
  }
}

// ContentBody類，代表首頁主體的內容，是一個可以改變狀態的Widget。
class ContentBody extends StatefulWidget {
  @override
  // 創建狀態對象。
  State<StatefulWidget> createState() {
    return ContentBodyState();
  }
}

// ContentBodyState類，管理ContentBody的狀態。
class ContentBodyState extends State<ContentBody> {
  var flag = true; // 用於記錄Checkbox是否被選中。

  @override
  // 建構主體內容的界面。
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center, // 水平居中排列。
        children: <Widget>[
          Checkbox(
            value: flag, // Checkbox的選中狀態。
            onChanged: (value) {
              setState(() {
                if (value != null) {
                  // 當Checkbox的值改變時，更新flag的值。
                  flag = value;
                }
              });
            },
          ),
          Text("改變Checkbox狀態範例", style: TextStyle(fontSize: 20)) // 顯示文本。
        ],
      ),
    );
  }
}
