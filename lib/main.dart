import 'package:flutter/material.dart';
import 'category_route.dart';


void main() {
  runApp(UnitConverterApp());
}



class UnitConverterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Unit Converter',
      // theme: ThemeData(
      //   primaryColor: Colors.green[100],
      //   accentColor: Colors.green[100],
      //   textTheme: TextTheme(bodyText2: TextStyle(color: Colors.green[100])),
      // ),
      home: CategoryRoute(),  // first screen -> [Categories] list
    );
  }
}
