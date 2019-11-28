import 'package:flutter/material.dart';

import 'package:finance_app/src/pages/home_page.dart';
import 'package:finance_app/src/pages/avatar_page.dart';
import 'package:finance_app/src/pages/alert_page.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Components app',
      debugShowCheckedModeBanner: false,
      //home: HomePage(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/' : ( BuildContext context ) => HomePage(),
        'alert' : ( BuildContext context ) => AlertPage(),
        'avatar' : (BuildContext context) => AvatarPage()
      },
    );
  }
}