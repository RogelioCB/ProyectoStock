import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
  const PrimeraPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stock Carpintería'),
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
          child: const Text('Stock referencia'),
        ),
      ),
    );
  }
}

class SegundaPantalla extends StatelessWidget {
  const SegundaPantalla({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buscar producto'),
      ),
      body: const Center(
        child: Text('Buscar producto/EAN'),
      ),
    );
  }
}
