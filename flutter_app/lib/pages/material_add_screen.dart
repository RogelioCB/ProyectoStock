import 'package:flutter/material.dart';

class PantallaIncrementarMaterial extends StatelessWidget {
  const PantallaIncrementarMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Agregar material'),
      ),
      body: Center(
        child: Text('Agregar material'),
      ),
    );
  }
}
