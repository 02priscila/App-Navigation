import 'package:flutter/material.dart';
import 'package:app_navigation/primer_boton.dart';
import 'package:app_navigation/segundo_boton.dart';
import 'package:app_navigation/tercer_boton.dart';
import 'package:app_navigation/botones.dart';
import 'package:app_navigation/regresar.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => principal(),
        'boton1': (BuildContext context) => PrimerBoton(),
        'boton2': (BuildContext context) => SegundoBoton(),
        'boton3': (BuildContext context) => TercerBoton(),
      },
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute(
            builder: (BuildContext builder) => Regresar());
      },
    );
  }
}
class principal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Mi App Navigation'),
        backgroundColor:Colors.deepPurple,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.play_arrow),
        backgroundColor: Colors.pinkAccent,
        onPressed: () {
          final ruta = MaterialPageRoute(
            builder: (context) {
              return botones();
            },
          );
          Navigator.push(context, ruta);
        },
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('Bienvenido!'),
            Text('Página Principal'),
            Text('Da clic en el boton rosa'),
          ],
        ),
      ),
    );
  }
}