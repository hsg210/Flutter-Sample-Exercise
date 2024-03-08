import 'package:flutter/material.dart'; // 導入Flutter材料設計庫

/*
這段代碼是一個簡單的Flutter應用程序，用於展示一個包含增加和減少按鈕的計數器，以及顯示從首頁傳遞過來的消息文本。以下是對代碼逐步解釋：

1.  `import 'package:flutter/material.dart';`  - 導入Flutter的材料設計庫，這是開發Flutter應用所必需的。

2.  `main() => runApp(MyApp());`  - 定義主函數，這是Flutter應用的入口點。這行代碼的作用是運行 `MyApp` 這個應用。

3.  `class MyApp extends StatelessWidget`  - 定義了一個名為 `MyApp` 的類，這個類繼承自 `StatelessWidget` ，表示它是一個不會改變狀態的widget。

4. 在 `MyApp` 類中， `build` 方法返回一個 `MaterialApp`  widget，設置了應用程序的首頁為 `HomePage` 並移除了右上角的debug標誌。

5.  `class HomePage extends StatelessWidget`  - 定義了一個代表首頁的 `HomePage` 類，這個類也是一個 `StatelessWidget` 。

6. 在 `HomePage` 類的 `build` 方法中，使用 `Scaffold`  widget來構建首頁的界面，包括一個 `AppBar` 和主體部分設置為 `HomeContent` 。

7.  `class HomeContent extends StatefulWidget`  - 定義了一個名為 `HomeContent` 的類，這次它繼承自 `StatefulWidget` ，因為這個widget需要根據用戶的互動來改變狀態（計數器的數字）。

8.  `HomeContent` 類接收一個字符串 `message` 作為參數，這個參數是從 `HomePage` 傳過來的。

9.  `class _HomeContentState extends State<HomeContent>`  - 定義了一個名為 `_HomeContentState` 的類，用於管理 `HomeContent` 的狀態。

10. 在 `_HomeContentState` 類中，定義了一個計數器變量 `_counter` ，初始值為0。

11. 在 `build` 方法中，使用 `Center` 和 `Column`  widgets來垂直居中顯示兩個按鈕和計數器的值。

12.  `_getButton` 方法返回一個包含加號("+")和減號("-")按鈕的 `Row`  widget。每個按鈕在被按下時，通過調用 `setState` 方法來增加或減少 `_counter` 的值，從而觸發界面的重新構建並更新計數器的顯示。

這段代碼展示了Flutter中狀態管理的基本概念，如何透過 `StatefulWidget` 和 `setState` 方法來實現界面的動態更新。

*/
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
        title: Text("數字增減按鈕範例"), // 設置AppBar的標題為"數字增減按鈕範例"
      ),
      body: HomeContent("我是從Homepage傳來的訊息文字"), // 首頁的主體部分設置為HomeContent
    );
  }
}

// HomeContent類，定義為StatefulWidget以支援內部狀態的變化
class HomeContent extends StatefulWidget {
  final String message; // 定義一個String類型的message變量
  HomeContent(this.message); // 構造函數，接收一個String類型的message參數
  @override
  State<StatefulWidget> createState() {
    return _HomeContentState();
  }
}

// _HomeContentState類，用於管理HomeContent的狀態
class _HomeContentState extends State<HomeContent> {
  var _counter = 0; // 定義一個計數器變量

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, // 將元件垂直置中
        children: <Widget>[
          _getButton(), // 調用_getButton方法來獲取按鈕
          Text(
            "當前計數:$_counter", // 顯示當前計數器的值
            style: TextStyle(fontSize: 30), // 設置文字大小
          ),
          Text("widget接收過來的文字是:${widget.message}")
        ],
      ),
    );
  }

  // _getButton方法，返回一個包含兩個按鈕的Row widget
  Widget _getButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, // 將按鈕水平置中
      children: <Widget>[
        ElevatedButton(
            child: Text("+"),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Colors.blue), // 設置背景色為藍色
              textStyle: MaterialStateProperty.all(
                TextStyle(
                  fontSize: 40, // 設置文字大小
                  color: Colors.black, // 設置文字顏色為黑色
                ),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero, // 設置邊緣為方型
                ),
              ),
            ),
            onPressed: () {
              setState(() {
                _counter++; // 增加計數器的值
                print("Click +");
              });
            }),
        ElevatedButton(
            child: Text("-"),
            style: ButtonStyle(
              backgroundColor:
                  MaterialStateProperty.all(Colors.red), // 設置背景色為紅色
              textStyle: MaterialStateProperty.all(
                TextStyle(
                  fontSize: 40, // 設置文字大小
                  color: Colors.white, // 設置文字顏色為白色
                ),
              ),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.zero, // 設置邊緣為方型
                ),
              ),
            ),
            onPressed: () {
              setState(() {
                _counter--; // 減少計數器的值
                print("Click -");
              });
            }),
      ],
    );
  }
}
