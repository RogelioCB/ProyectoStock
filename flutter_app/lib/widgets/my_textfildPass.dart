import 'package:flutter/material.dart';

class MyTextfildpassword extends StatefulWidget {
  final TextEditingController controller;
  final String labelText;

  const MyTextfildpassword({
    Key? key,
    required this.controller,
    required this.labelText,
  }) : super(key: key);

  @override
  _MyTextfildpasswordState createState() => _MyTextfildpasswordState();
}

class _MyTextfildpasswordState extends State<MyTextfildpassword> {
  bool _isObscured = true;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: _isObscured,
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
    );
  }
}
