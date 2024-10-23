import 'package:flutter/material.dart';
import 'package:flutter_app/widgets/dropdown_stock_button_widget.dart';

class PantallaPrincipal extends StatelessWidget {
  const PantallaPrincipal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dropdown Navigation Example'),
      ),
      body: Center(
        child: DropdownButtonMenuPrincipal(),
      ),
    );
  }
}
