import 'package:flutter/material.dart';
import 'package:flutter_app/pages/location_stock_screen.dart';
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
    'Stock Ubicacion',
    'Registro uso material'
  ];
  // Valor seleccionado actualmente
  String? _opcionSeleccionada;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      width: 300,
      decoration: BoxDecoration(
        color: Colors.lightBlue,
        borderRadius: BorderRadius.circular(100),
        border: Border.all(color: Colors.black, width: 1),
      ),
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Center(
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            isExpanded: true,
            hint: Center(
              child: Text(
                "Stock",
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
            ),
            value: _opcionSeleccionada,
            icon: Icon(Icons.arrow_drop_down, color: Colors.white, size: 40),
            dropdownColor: Colors.lightBlue,
            items: _opciones.map((String opcion) {
              return DropdownMenuItem<String>(
                value: opcion,
                child: Center(
                  child: Text(
                    opcion,
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              );
            }).toList(),
            onChanged: (String? nuevaOpcion) {
              setState(() {
                _opcionSeleccionada = nuevaOpcion;
              });
              _navegarAPantalla(context, nuevaOpcion);
            },
          ),
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
    } else if (opcion == 'Stock Ubicacion') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PantallaStockUbicacion()),
      );
    } else if (opcion == 'Registro uso material') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PantallaRegistroMaterial()),
      );
    }
  }
}
