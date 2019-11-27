import 'package:finance_app/src/providers/menu_provider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Components"),
      ),
      body: _lista(),
    );
  }

  Widget _lista() {

    // menuProvider.cargarData()

    return FutureBuilder(
      future: menuProvider.cargarData(),
      initialData: [],
      builder: ( context, AsyncSnapshot<List<dynamic>> snapshot){
        // Se dispara en varias etapas
        return ListView(
          children: _listaItems(),
        );
      },
    );
    // 
  }

  List<Widget> _listaItems() {
    return [
      ListTile( title: Text("hola Mundo")),
      Divider(),
      ListTile( title: Text("hola Mundo")),
      Divider(),
      ListTile( title: Text("hola Mundo")),
      Divider(),
    ];
  }
}