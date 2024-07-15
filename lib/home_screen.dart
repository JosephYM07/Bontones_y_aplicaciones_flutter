import 'package:flutter/material.dart';
import 'aplicacion1/main2.dart';  // Importar main2.dart de Aplicación 1
import 'aplicacion2/main3.dart';  // Importar main3.dart de Aplicación 2
import 'aplicacion3/main4.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Screen'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage()),  // Llama a HomePage de Aplicación 1
                );
              },
              child: Text('Ir a Aplicación 1'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => App()),  // Llama a main3.dart de Aplicación 2
                );
              },
              child: Text('Ir a Aplicación 2'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MyApp2()),  // Pantalla principal de Aplicación 3
                );
              },
              child: Text('Ir a Aplicación 3'),
            ),
          ],
        ),
      ),
    );
  }
}
