import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Filtro vacantes',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Filtro vacantes'),
        ),
        body: Center(
          child: DropdownExample(),
        ),
      ),
    );
  }
}

class DropdownExample extends StatefulWidget {
  @override
  _DropdownExampleState createState() => _DropdownExampleState();
}

class _DropdownExampleState extends State<DropdownExample> {
  // Lista de opciones
  List<String> _opciones = ['UGT', 'Comisiones Obreras'];

  // Valor seleccionado inicialmente
  String? _opcionSeleccionada;

  @override
  Widget build(BuildContext context) {
    DropdownButton<String>(
      value: _opcionSeleccionada,
      items: _opciones.map((String opcion) {
        return DropdownMenuItem<String>(
          value: opcion,
          child: Text(opcion, style: TextStyle(color: Colors.blue)),
        );
      }).toList(),
      onChanged: (String? nuevoValor) {
        setState(() {
          _opcionSeleccionada = nuevoValor;
        });
      },
      hint: Text('Seleccione una opción'),
      icon: Icon(Icons.arrow_downward, color: Colors.blue),
      underline: Container(height: 2, color: Colors.blue),
    );

    ;
  }
}
