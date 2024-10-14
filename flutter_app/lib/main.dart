import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stock Carpintería',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PrimeraPantalla(),
    );
  }
}

class PrimeraPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stock Carpintería'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navegar a la segunda pantalla
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SegundaPantalla()),
            );
          },
          child: Text('Stock referencia'),
        ),
      ),
    );
  }
}

class SegundaPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buscar producto'),
      ),
      body: Center(
        child: Text('Buscar producto/EAN'),
      ),
    );
  }
}
