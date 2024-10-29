import 'package:flutter/material.dart';

class Project_screen extends StatefulWidget {
<<<<<<< HEAD
   const Project_screen({super.key});
=======
  const Project_screen({super.key});
>>>>>>> 120fd8841e9ba3178783a5ca6abcefe7db3de62c

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
<<<<<<< HEAD
          //mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //const Spacer(flex: 10),
=======
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(flex: 10),
>>>>>>> 120fd8841e9ba3178783a5ca6abcefe7db3de62c
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
<<<<<<< HEAD
}
=======
}
>>>>>>> 120fd8841e9ba3178783a5ca6abcefe7db3de62c
