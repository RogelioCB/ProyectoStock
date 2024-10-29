import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/dropdown_stock_button_widget.dart';
import 'package:flutter_app/widgets/logout_button_widget.dart';
import 'package:flutter_app/widgets/material_input_button.dart';

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Pantalla Principal'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AddMaterialButton(),
            SizedBox(height: 20),
            DropdownButtonMenuPrincipal(),
            SizedBox(height: 20),
            LogoutButton()
          ],
        ),
      ),
    );
  }
}
