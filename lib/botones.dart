import 'package:flutter/material.dart';

class botones extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Adónde quieres ir?'),
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text('Elige una ruta')],
        ),
      ),
      floatingActionButton: Row(
        children: <Widget>[
          Expanded(
            child: SizedBox(),
          ),
          FloatingActionButton(
            backgroundColor: Colors.yellow,
            heroTag: 'boton3',
            child: Text('3'), foregroundColor: Colors.black,
            onPressed: () {
              Navigator.pushNamed(context, 'boton3');
            },
          ),
          SizedBox(
            width: 15,
          ),
          FloatingActionButton(
            backgroundColor: Colors.lightGreen,
            heroTag: 'boton2',
            child: Text('2'),
            onPressed: () {
              Navigator.pushNamed(context, 'boton2');
            },
          ),
          SizedBox(
            width: 15,
          ),
          FloatingActionButton(
            backgroundColor: Colors.lightBlueAccent,
            heroTag: 'boton1',
            child: Text('1'),
            onPressed: () {
              Navigator.pushNamed(context, 'boton1');
            },
          ),
          SizedBox(
            width: 15,
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