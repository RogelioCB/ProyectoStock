import 'package:fancy_button_flutter/fancy_button_flutter.dart';
import 'package:flutter/material.dart';
import '../pages/login.dart';

class LogoutButton extends StatelessWidget {
  const LogoutButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FancyButton(
      button_icon: Icons.logout,
      button_text: "  Cerrar sesión  ",
      button_height: 40,
      button_width: 300,
      button_radius: 100,
      button_color: Colors.lightBlue,
      button_outline_color: Colors.black,
      button_outline_width: 1,
      button_text_color: Colors.white,
      button_icon_color: Colors.white,
      icon_size: 40,
      button_text_size: 28,
      onClick: () {
        // Navegar a la página LoginPage
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => LoginPage()),
        );
      },
    );
  }
}
