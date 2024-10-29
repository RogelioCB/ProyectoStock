import 'package:flutter/material.dart';

class PantallaAddMaterial extends StatelessWidget {
  const PantallaAddMaterial({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Material'),
      ),
      body: Center(
        child: Text('Add Material'),
      ),
    );
  }
}