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
        title: Text("數字增減按鈕範例"), // 設置AppBar的標題為"商品列表範例"
      ),
      body: HomeContent(), // 首頁的主體部分設置為HomeContent
    );
  }
}

class HomeContent extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _HomeContentState();
  }
}

class _HomeContentState extends State<HomeContent> {
  var _counter = 0;
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center, //畫面元件中央垂直置中
        children: <Widget>[
          _getButton(),
          Text(
            "當前計數:$_counter",
            style: TextStyle(fontSize: 30),
          )
        ],
      ),
    );
  }

  Widget _getButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center, //兩個按鈕畫面水平置中
      children: <Widget>[
        ElevatedButton(
          child: Text("+"),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.blue), // 設置背景色為藍色
            textStyle: MaterialStateProperty.all(
              TextStyle(
                fontSize: 40, // 設置文字大小為20
                color: Colors.black, // 設置文字顏色為黑色
              ),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.zero, // 設置邊緣為方型
              ),
            ),
          ),
          onPressed: () => print("Click +"),
        ),
        ElevatedButton(
          child: Text("-"),
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all(Colors.red), // 正確設置背景色
            textStyle: MaterialStateProperty.all(
              TextStyle(
                fontSize: 40, // 設置文字大小為20
                color: Colors.white, // 設置文字顏色為黑色
              ),
            ),
            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.zero, // 設置邊緣為方型
              ),
            ),
          ),
          onPressed: () => print("Click -"),
        ),
      ],
    );
  }
}
