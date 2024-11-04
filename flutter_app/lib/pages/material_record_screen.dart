import 'package:flutter/material.dart';

class PantallaRegistroMaterial extends StatelessWidget {
  const PantallaRegistroMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue[900],
        title: Text('Registro uso material'),
      ),
      body: Center(
        child: Text('Registro uso material'),
      ),
    );
  }
}
