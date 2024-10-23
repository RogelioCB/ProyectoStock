import 'package:flutter/material.dart';

class PantallaStockProducto extends StatelessWidget {
  const PantallaStockProducto({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stock producto'),
      ),
      body: Center(
        child: Text('Agregar buscador'),
      ),
    );
  }
}
