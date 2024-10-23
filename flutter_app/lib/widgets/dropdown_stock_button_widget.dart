import 'package:flutter/material.dart';
import 'package:flutter_app/pages/material_add_screen.dart';
import 'package:flutter_app/pages/material_record_screen.dart';
import 'package:flutter_app/pages/material_stock_screen.dart';

class DropdownButtonMenuPrincipal extends StatefulWidget {
  const DropdownButtonMenuPrincipal({super.key});

  @override
  State<DropdownButtonMenuPrincipal> createState() =>
      _DropdownButtonMenuPrincipalState();
}

class _DropdownButtonMenuPrincipalState
    extends State<DropdownButtonMenuPrincipal> {
  // Lista de opciones para el desplegable
  final List<String> _opciones = [
    'Stock producto',
    'Añadir material',
    'Registro uso material'
  ];
  // Valor seleccionado actualmente
  String? _opcionSeleccionada;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Nombre de la empresa'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // DropdownButton para la lista desplegable
            DropdownButton<String>(
              hint: Text('Stock'),
              value: _opcionSeleccionada,
              items: _opciones.map((String opcion) {
                return DropdownMenuItem<String>(
                  value: opcion,
                  child: Text(opcion),
                );
              }).toList(),
              onChanged: (String? nuevaOpcion) {
                setState(() {
                  _opcionSeleccionada = nuevaOpcion;
                });
                _navegarAPantalla(context, nuevaOpcion);
              },
            ),
          ],
        ),
      ),
    );
  }

  // Función para navegar a la pantalla seleccionada
  void _navegarAPantalla(BuildContext context, String? opcion) {
    if (opcion == 'Stock producto') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PantallaStockProducto()),
      );
    } else if (opcion == 'Añadir material') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PantallaIncrementarMaterial()),
      );
    } else if (opcion == 'Registro uso material') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PantallaRegistroMaterial()),
      );
    }
  }
}
