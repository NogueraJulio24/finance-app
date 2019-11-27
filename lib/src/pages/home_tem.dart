import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {

  final opciones = ["Uno", "Dos", "Tres", "Cuatro", "Julio", "Noguera", "López"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Components Temporales"),
      ),
      body: ListView(
        children: _crearItemCorto()
        
      ),
    );
  }

  List<Widget> _crearItems(){

    List<Widget> lista = new List<Widget>();

    for (String op in opciones){
      final temwidget = ListTile(
        title: Text(op)
      );

      lista..add(temwidget)
            ..add(Divider());    
    }

    return lista;
  }


  List<Widget> _crearItemCorto(){
    return opciones.map(( item ){

      return Column(
        children: <Widget>[
          ListTile(
            title: Text( item + "!"),
            subtitle: Text("Esto es un Susbittulo"),
            leading: Icon(Icons.accessibility),
            trailing: Icon(Icons.arrow_back),
            onTap: (){},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}