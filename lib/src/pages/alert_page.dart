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
           onPressed: (){

           },
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
}