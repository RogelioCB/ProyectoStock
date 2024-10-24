import 'package:flutter/material.dart';
import 'package:flutter_app/pages/Project_screen.dart';


class Projectbutton extends StatefulWidget {
  const Projectbutton({super.key});

  @override
  State<Projectbutton> createState() => _ProjectbuttonState();
}

class _ProjectbuttonState extends State<Projectbutton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          'Nombre de Empresa',
        ),
        toolbarHeight: 100,
      ),
      body:Column(
        children: [
           ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Project_screen()));
              },
              child: const Center(child: Text("proyectos")),
          ),
         
        ],
      ),

    );
  }
}