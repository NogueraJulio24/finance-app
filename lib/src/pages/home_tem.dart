import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Components Temporales"),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(title: 
            Text("List"),
          ),
          Divider(),
          ListTile(title: 
            Text("List"),
          ),
          Divider(),
          ListTile(title: 
            Text("List"),
          ),
          Divider(),
        ],
      ),
    );
  }
}