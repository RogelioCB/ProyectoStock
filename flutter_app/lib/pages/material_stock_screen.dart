import 'package:flutter/material.dart';

class PantallaStockProducto extends StatelessWidget {
  const PantallaStockProducto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue[900],
        title: Text('Stock producto'),
      ),
      body: Center(
        child: Text('Agregar buscador'),
      ),
    );
  }
}
