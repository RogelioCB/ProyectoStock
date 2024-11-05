import 'package:flutter/material.dart';

class ExitScreen extends StatefulWidget {
  const ExitScreen({super.key});
  
@override
  State<ExitScreen> createState() => _ExitScreen();
  


 
}
class _ExitScreen extends State<ExitScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue[900],
        title: Text('Salidas'),
      ),
  
    );
  }
  

}