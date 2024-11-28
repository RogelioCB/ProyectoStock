import 'package:flutter/material.dart';

class MyTextfildpassword extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;
  final double width;
  final FocusNode? focusNode; // Add focusNode parameter
  final void Function(String)? onFieldSubmitted; // Add onFieldSubmitted parameter

  const MyTextfildpassword({
    Key? key,
    required this.controller,
    required this.labelText,
    this.width = double.infinity,
    this.focusNode, // Initialize focusNode
    this.onFieldSubmitted, // Initialize onFieldSubmitted
  }) : super(key: key);

  @override
  _MyTextfildpasswordState createState() => _MyTextfildpasswordState();
}

class _MyTextfildpasswordState extends State<MyTextfildpassword> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: widget.width,
      child: TextField(
        controller: widget.controller,
        obscureText: _isObscured,
        focusNode: widget.focusNode, // Set the focusNode here
        onSubmitted: widget.onFieldSubmitted, // Set onSubmitted here
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade400),
          ),
          fillColor: Colors.grey.shade200,
          filled: true,
          labelText: widget.labelText,
          suffixIcon: IconButton(
            icon: Icon(
              _isObscured ? Icons.visibility : Icons.visibility_off,
              color: Colors.grey,
            ),
            onPressed: () {
              setState(() {
                _isObscured = !_isObscured;
              });
            },
          ),
        ),
      ),
    );
  }
}
