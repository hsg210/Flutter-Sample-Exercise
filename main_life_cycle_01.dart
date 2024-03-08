// 導入Flutter框架的材料設計庫，提供豐富的widget集合
import 'package:flutter/material.dart';
// 導入Flutter框架的渲染庫，用於低層次的渲染操作（這行在此代碼中未直接使用，但可能用於擴展或實現自定義渲染）
import 'package:flutter/rendering.dart';

// 主函數，Flutter應用的入口點
main() =>
    runApp(MyApp()); // runApp函數接受一個Widget並使它成為widget樹的根，這裡將MyApp類的實例設為應用的根。

// 定義MyApp類，繼承自StatelessWidget，表示它是一個不包含內部狀態的widget
class MyApp extends StatelessWidget {
  @override // 覆寫build方法，這是所有widget都必須實現的方法，用於描述如何根據其他低級別的widget來顯示自身
  Widget build(BuildContext context) {
    // 返回一個MaterialApp，它是Material應用程序的根widget，提供了許多基本的設計和布局功能
    return MaterialApp(
      debugShowCheckedModeBanner: false, // 移除右上角的debug標誌
      home: HomePage(), // 設置應用程序的首頁為HomePage類的實例
    );
  }
}

// 定義HomePage類，繼承自StatelessWidget
class HomePage extends StatelessWidget {
  @override // 覆寫build方法
  Widget build(BuildContext context) {
    // 返回一個Scaffold，它提供了基本的Material Design布局結構，如抽屜、Snackbar、底部導航等
    return Scaffold(
      appBar: AppBar(
        title: Text("數字增減按鈕範例"), // 設置AppBar的標題
      ),
      // 主體部分設置為HomeContent類的實例，並傳遞一個字符串作為參數
      body: HomeContent("我是從Homepage傳來的訊息文字"),
    );
  }
}

// 定義HomeContent類，繼承自StatelessWidget
class HomeContent extends StatelessWidget {
  final String message; // 定義一個final類型的字符串變量message，用於存儲從外部傳入的數據
  // 構造函數，接收一個String類型的message參數
  HomeContent(this.message) {
    print("構造函數被調用"); // 構造函數被調用時在控制台輸出信息
  }
  @override // 覆寫build方法
  Widget build(BuildContext context) {
    print("調用Build構造方法"); // 每次widget重建時在控制台輸出信息
    // 返回一個Text widget，顯示傳入的message內容
    return Text(message);
  }
}
