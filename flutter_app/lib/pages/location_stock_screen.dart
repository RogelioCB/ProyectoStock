import 'package:fancy_button_flutter/fancy_button_flutter.dart';
import 'package:flutter/material.dart';

class PantallaStockUbicacion extends StatelessWidget {
  const PantallaStockUbicacion({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue[900],
        title: Text('Buscar Stock Ubicación'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Introduce Ubicación'),
            SizedBox(height: 20),
            FancyButton(
              button_text: "Buscar",
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
                // Añadir función para introducir en la base de datos
              },
            )
          ],
        ),
      ),
    );
  }
}
