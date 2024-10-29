import 'package:flutter/material.dart';
import 'package:flutter_app/pages/Project_screen.dart';


class Project_button extends StatefulWidget {
  const Project_button({super.key});
<<<<<<< HEAD
  
=======

>>>>>>> 120fd8841e9ba3178783a5ca6abcefe7db3de62c
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
<<<<<<< HEAD
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Spacer(flex: 2,),
             ElevatedButton(
=======
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          
          children: [
            Spacer(flex: 2,),
            ElevatedButton(
>>>>>>> 120fd8841e9ba3178783a5ca6abcefe7db3de62c
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=> Project_screen()));
              },
              child: const Center(child: Text("proyectos")),
            ), 
<<<<<<< HEAD
               //Spacer(flex: 5,),
          ], 
=======
            Spacer(flex: 5,),
          ],
          
>>>>>>> 120fd8841e9ba3178783a5ca6abcefe7db3de62c
        )
      ),
    );
  }
}