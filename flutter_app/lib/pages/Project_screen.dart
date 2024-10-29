import 'package:flutter/material.dart';

class Project_screen extends StatefulWidget {
   const Project_screen({super.key});

  @override
  State<Project_screen> createState() => _Project_screenState();
}

class _Project_screenState extends State<Project_screen> {
  int click = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Proyectos'),
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //const Spacer(flex: 10),
            IconButton(
              icon: const Icon(Icons.add_box),
              iconSize: 50,
              onPressed: (){
              },
            )
          ]
        )
      ),
    );
  }
}
