// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class MyTextfild extends StatelessWidget {
  final String labelText;
  final bool obscureText;
  final TextEditingController controller;
  final double width; // Nuevo parámetro

  const MyTextfild({
    Key? key,
    required this.obscureText,
    required this.controller,
    required this.labelText,
    this.width = double.infinity, // Valor por defecto
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width, // Usamos el ancho proporcionado
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25.0),
        child: TextField(
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade400),
            ),
            fillColor: Colors.grey.shade200,
            filled: true,
            labelStyle: TextStyle(color: Colors.grey[500]),
            labelText: labelText, // Cambié a usar el labelText pasado
          ),
        ),
      ),
    );
  }
}
