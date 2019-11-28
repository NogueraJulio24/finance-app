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
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0),
          _cardTipo1(),
          SizedBox(height: 30.0),
          _cardTipo2(),
          SizedBox(height: 30.0)
            ],
          ),
        );
      }
    
      Widget _cardTipo1() {
        return Card(
            elevation: 15.0,
            shape: RoundedRectangleBorder( borderRadius: BorderRadius.circular(10.0)),
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

      Widget _cardTipo2() {
        final card = Container(
          //clipBehavior: Clip.antiAlias,
          child: Column(
            children: <Widget>[
              FadeInImage(
                image: NetworkImage('https://cdn.mos.cms.futurecdn.net/FUE7XiFApEqWZQ85wYcAfM.jpg'),
                placeholder: AssetImage('assets/loading.gif'),
                height: 300.0,
                fit: BoxFit.cover,
              ),
              Container(
                padding: EdgeInsets.all(10.0),
                child: Text('No tengo idea de que poner'))
            ],
          ),
        );

        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30.0),
            color: Colors.grey,
            boxShadow: <BoxShadow>[
              BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 0,
                offset: Offset(2.0, -10.0)
              )
            ]
          ),
          child:  ClipRRect(
            borderRadius: BorderRadius.circular(30.0),
            child: card,
          )
        );
      }
}