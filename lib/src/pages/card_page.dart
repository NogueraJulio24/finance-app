import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Card'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: <Widget>[
          _cardTipo1()
                  ],),
              );
            }
          
            Widget _cardTipo1() {
              return Card(
                  child: Column(
                    children: <Widget>[
                      ListTile(
                        leading: Icon(Icons.photo_album, color: Colors.blue),
                        title: Text('Im the title of this '),
                        subtitle: Text('Esto es un subtitutlo de la tarjeta que lo que hace es escribir'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          FlatButton(
                            child: Text('Cancelar'),
                            onPressed: (){

                            },
                          ),
                          FlatButton(
                            child: Text('Aceptar'),
                            onPressed: (){},
                          )
                        ],
                      )
                  ],
                ),
              );
            }
}