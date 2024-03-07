import 'package:flutter/material.dart'; // 導入Flutter材料設計庫

// 主函數，應用程序的入口點
main(List<String> args) {
  runApp(MyApp()); // 運行MyApp應用
}

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
        title: Text("商品列表範例"), // 設置AppBar的標題為"商品列表範例"
      ),
      body: HomeContent(), // 首頁的主體部分設置為HomeContent
    );
  }
}

// HomeContent類，代表首頁主體的內容，展示商品列表
class HomeContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        HomePorductItem("Product", "Catbook1",
            "https://down-tw.img.susercontent.com/file/555d88a8864e88ca8c601d6793ff8394"), // 第一個商品項目
        SizedBox(height: 2), // 商品項目之間的間隔
        HomePorductItem("Product", "Catbook2",
            "https://down-tw.img.susercontent.com/file/555d88a8864e88ca8c601d6793ff8394"), // 第二個商品項目
        SizedBox(height: 2), // 商品項目之間的間隔
        HomePorductItem("Product", "Catbook3",
            "https://down-tw.img.susercontent.com/file/57b7f54bd7c9a49abcf1f2ed05ded692"), // 第三個商品項目
      ],
    );
  }
}

// HomePorductItem類，代表單個商品項目
class HomePorductItem extends StatelessWidget {
  final String title; // 商品標題
  final String desc; // 商品描述
  final String imageURL; // 商品圖片URL

  final style1 = TextStyle(fontSize: 20, color: Colors.orange); // 商品標題的樣式
  final style2 = TextStyle(fontSize: 20, color: Colors.yellowAccent); // 商品描述的樣式

  // 構造函數，接收商品標題、描述和圖片URL作為參數
  HomePorductItem(this.title, this.desc, this.imageURL);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.0), // 設置內邊距
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blue, width: 5)), // 設置邊框
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start, // 子Widget左對齊
        children: <Widget>[
          Text(title, style: style1), // 顯示商品標題
          SizedBox(height: 8), // 標題和描述之間的間隔
          Text(desc, style: style2), // 顯示商品描述
          SizedBox(height: 8), // 描述和圖片之間的間隔
          Image.network(imageURL) // 顯示商品圖片
        ],
      ),
    );
  }
}
