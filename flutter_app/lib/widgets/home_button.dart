import 'package:fancy_button_flutter/fancy_button_flutter.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ejemplo de Botón en Flutter'),
        ),
        body: Center(
            child: FancyButton(
                button_icon: Icons.logout,
                button_text: "  Logout  ",
                button_height: 40,
                button_width: 300,
                button_radius: 100,
                button_color: Colors.red,
                button_outline_color: Colors.red,
                button_outline_width: 1,
                button_text_color: Colors.white,
                button_icon_color: Colors.white,
                icon_size: 44,
                button_text_size: 30,
                onClick: () {})),
      ),
    );
  }
}
