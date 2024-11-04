import 'package:flutter/material.dart';
import 'package:flutter_app/pages/Project_screen.dart';
import 'package:fancy_button_flutter/fancy_button_flutter.dart';


class Project_button extends StatelessWidget {
  const Project_button({super.key});

  @override
  Widget build(BuildContext context) {
    return FancyButton(
      button_icon: Icons.assessment, // Cambia el ícono según tu necesidad
      button_text: "  Proyectos  ",
      button_height: 40,
      button_width: 300,
      button_radius: 100,
      button_color: Colors.lightBlue, // Establece el color que desees
      button_outline_color: Colors.black,
      button_outline_width: 1,
      button_text_color: Colors.white,
      button_icon_color: Colors.white,
      icon_size: 40,
      button_text_size: 28,
      onClick: () {
        // Navegar a la página Project_screen
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => Project_screen()),
        );
      },
    );
  }
}



