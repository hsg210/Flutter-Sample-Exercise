import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart'; // 導入Flutter材料設計庫

// 主函數，應用程序的入口點
main() => runApp(MyApp()); // 運行MyApp應用

// MyApp類，代表應用程序的根Widget
class MyApp extends StatelessWidget {
  @override
  // 構建應用程序的界面
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 移除右上角的debug標誌
      home: HomePage(), // 設置應用程序的首頁為HomePage
    );
  }
}

// HomePage類，代表首頁的內容
class HomePage extends StatelessWidget {
  @override
  // 構建首頁的界面
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("生命週期範例"), // 設置AppBar的標題為"數字增減按鈕範例"
      ),
      body: HomeContent("我是從Homepage傳來的訊息文字"), // 首頁的主體部分設置為HomeContent
    );
  }
}

// HomeContent類，定義為StatefulWidget以支援內部狀態的變化
class HomeContent extends StatelessWidget {
  final String message; // 定義一個String類型的message變量
  HomeContent(this.message) {
    print("構造函數被調用");
  } // 構造函數，接收一個String類型的message參數
  @override
  Widget build(BuildContext context) {
    print("調用Build構造方法");
    // TODO: implement build
    return Text(message);
  }
}
