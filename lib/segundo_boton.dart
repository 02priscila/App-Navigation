import 'package:flutter/material.dart';

class SegundoBoton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página 2'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Center(
        child: Image.asset('imagenes/AlanWalker.jpg'),
      ),
      floatingActionButton: Row(
        children: <Widget>[
          Expanded(
            child: SizedBox(),
          ),
          FloatingActionButton(
            backgroundColor: Colors.red,
            heroTag: 'error',
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