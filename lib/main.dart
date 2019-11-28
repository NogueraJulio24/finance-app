import 'package:flutter/material.dart';

import 'package:finance_app/src/routes/routes.dart';
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
      routes: getApplicationRoutes(),

      onGenerateRoute: ( RouteSettings settings ){

        return MaterialPageRoute(
          builder: ( BuildContext context ) => AlertPage()
        );
      },
    );
  }
}