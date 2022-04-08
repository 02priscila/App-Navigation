import 'package:flutter/material.dart';

class PrimerBoton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página 1'),
        backgroundColor: Colors.lightBlueAccent,
      ),
      body: Center(
        child: Image.asset('imagenes/marshmello.jpg'),
      ),
      floatingActionButton: Row(
          children: <Widget>[
      Expanded(
      child: SizedBox(),
      ),
      FloatingActionButton(
        backgroundColor: Colors.red,
        heroTag: 'regresar',
        child: Text('R'),
        onPressed: () {
          Navigator.pop(context, 'Regresar');
        },
      ),
    ],
      ),
      );
  }
}