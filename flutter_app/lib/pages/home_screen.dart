import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/Project_button.dart';
import 'package:flutter_app/widgets/dropdown_stock_button_widget.dart';
import 'package:flutter_app/widgets/logout_button_widget.dart';
import 'package:flutter_app/widgets/material_input_button.dart';

import '../widgets/exit_button.dart';

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue[900],
        title: Text('Pantalla Principal'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DropdownButtonMenuPrincipal(),
            SizedBox(height: 20),
            AddMaterialButton(),
            SizedBox(height: 20),
            botonsalidas(),
            SizedBox(height: 20),
            Project_button(),
            SizedBox(height: 20),
            LogoutButton()
          ],
        ),
      ),
    );
  }
}
