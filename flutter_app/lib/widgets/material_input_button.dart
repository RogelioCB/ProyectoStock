import 'package:fancy_button_flutter/fancy_button_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/pages/material_input_screen.dart';

class AddMaterialButton extends StatelessWidget {
  const AddMaterialButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FancyButton(
      button_text: "  Entradas  ",
      button_height: 40,
      button_width: 300,
      button_radius: 100,
      button_color: Colors.green,
      button_outline_color: Colors.black,
      button_outline_width: 1,
      button_text_color: Colors.white,
      button_icon_color: Colors.white,
      icon_size: 40,
      button_text_size: 28,
      onClick: () {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => PantallaAddMaterial()));
      },
    );
  }
}
