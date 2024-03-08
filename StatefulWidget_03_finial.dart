import 'package:flutter/material.dart'; // 導入Flutter材料設計庫

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
      body: HomeContent(), // 首頁的主體部分設置為HomeContent
    );
  }
}

// HomeContent類，定義為StatefulWidget以支援內部狀態的變化
class HomeContent extends StatefulWidget {
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
          )
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
