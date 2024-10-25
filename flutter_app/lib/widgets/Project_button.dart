import 'package:flutter/material.dart';
import 'package:flutter_app/pages/Project_screen.dart';


class Project_button extends StatefulWidget {
  const Project_button({super.key});

  @override
  State<Project_button> createState() => _Project_button();
}

class _Project_button extends State<Project_button> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text(
          'Nombre de Empresa',
        ),
        toolbarHeight: 100,
      ),


      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
          children: [
            Spacer(flex: 2,),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Project_screen()));
              },
              child: const Center(child: Text("proyectos")),
            ), 
            Spacer(flex: 5,),
          ],
          
        )
      ),
    );
  }
}