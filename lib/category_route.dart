import 'package:flutter/material.dart';
import 'category.dart';


final _backgroundColor = Colors.green[100];  // 共通パーツ外出し



// Category Route (screen) :home screen :ist of [Categories].
class CategoryRoute extends StatelessWidget {
  const CategoryRoute();  // ??

  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Energy',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];


  // ++++++++++++++++++++++++++++++++++++++++++++
  @override
  Widget build(BuildContext context) {
    // -- listView --

    // final listView = Container(
    //   child: Padding(
    //     padding: const EdgeInsets.symmetric(horizontal: 8.0),
    //     child: ListView.builder(
    //       padding: const EdgeInsets.all(20.0),
    //       itemCount: _baseColors.length,
    //       itemBuilder: (BuildContext context, int index) {
    //         return Container(
    //           width: double.infinity,
    //           height: 120,
    //           color: _baseColors[index],
    //           child: Center(
    //             child: Text(
    //               _categoryNames[index],
    //               style: TextStyle(
    //                   fontSize: 30.0,
    //                   fontStyle: FontStyle.italic,
    //                   fontWeight: FontWeight.bold,
    //                   color: Colors.blue[900],
    //                   decorationColor: Colors.red,
    //                   decoration: TextDecoration.underline,
    //               ),
    //             ),
    //           ),
    //         );
    //       }
    //     ),
    //   ),
    // );
    // --- 上をcatefory.dartに外出しして、InkWell付加。引数受け渡し-> CLASS({}):制約 ---
    final categories = <Category>[];
    for (var i = 0; i < _categoryNames.length; i++) {
      categories.add(
        Category(  // ここ：category.dart呼び込み(引数受け渡し)
          name: _categoryNames[i],
          color: _baseColors[i],
          iconLocation: Icons.cake,
        ),
      );
    }
    final listView = Container(
      color: _backgroundColor,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: ListView.builder(
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) => categories[index],
      ),
    );

    // -- appBar --
    final appBar = AppBar(
      elevation: 0.0,
      // backgroundColor: Color(0xff885566),  // 可能だが色コード不明,外出しで定義
      backgroundColor: _backgroundColor,
      title: Padding(
        padding: const EdgeInsets.only(top: 15.0, bottom: 15.0),
        child: Text(
          "Mr. Category",
          style: TextStyle(fontSize: 40.0, color: Colors.black,),
        ),
      ),
      centerTitle: true,
    );

    // ++++++++++++++++++++++++++++++++++++
    return Scaffold(
      backgroundColor: Colors.green[100],
      appBar: appBar,
      body: listView,
    );
  }
}
