import 'package:flutter/material.dart';

class TercerBoton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Página 3'), foregroundColor: Colors.black,
        backgroundColor: Colors.yellow,
      ),
      body: Center(
        child: Image.asset('imagenes/aamm.jpg'),
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