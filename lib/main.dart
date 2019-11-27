import 'package:flutter/material.dart';
import 'package:finance_app/src/pages/home_tem.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Components app',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Components App Bar'),
        ),
        body: HomePageTemp()
        ),
      ),
    );
  }
}