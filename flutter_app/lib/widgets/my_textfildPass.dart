// ignore_for_file: prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';

class MyTextfildpassword extends StatelessWidget {
  final String labelText; 
  final bool obscureText;
  final controller;
  const MyTextfildpassword(
      {super.key,
      //required TextEditingController controller,
      required this.obscureText, 
      required this.controller, 
      required this.labelText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: TextField(
         //controller: _usernameController,
          controller: controller,
          obscureText: obscureText,
          decoration: InputDecoration(
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
            ),
            focusedBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey.shade400)),
            fillColor: Colors.grey.shade200,
            filled: true,
            labelStyle: TextStyle(color: Colors.grey[500]),
            labelText: 'Password'
          ), // Cambié a "Email"
      ),
    );
  }
}
