import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Alert Page"),
      ),
      body: Center(
         child: RaisedButton(
           child: Text('Mostrar Alerta'),
           color: Colors.blue,
           textColor: Colors.white,
           shape: StadiumBorder(),
           onPressed: () => _mostrarAlerta(context),
          ),
        ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.backspace),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
    );
  }

  void _mostrarAlerta(BuildContext context){

    showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          title: Text("Esto es una Alerta"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Esto es un mensaje de alerta'),
              FlutterLogo( size: 150.0)
            ],
          ),
          actions: <Widget>[
            FlatButton(
              child: Text("Cancelar"),
              onPressed: (){

              },
            ),
            FlatButton(
              child: Text("Ok"),
              onPressed: (){
                
              },
            )
          ],
        );
      }
    );
  }
}