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
      //theme: ThemeData(primaryColor: Colors.blueAccent), //這邊設置無效
      //debugShowCheckedModeBanner: false, // 移除debug標誌。
      home: HomePage(), // 設置應用程序的首頁。
    );
  }
}

// HomePage類，代表首頁的內容。
class HomePage extends StatelessWidget {
  @override
  // 建構首頁的界面。
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("商品列表範例"), // 設置AppBar的標題。
      ),
      body: HomeContent(), // 首頁的主體部分
    );
  }
}

// HomeContent類，代表首頁主體的內容，是一個可以改變狀態的Widget。
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("Hello World");
  }
}
