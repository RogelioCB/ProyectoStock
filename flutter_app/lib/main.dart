import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Nombre de la empresa',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const DropdownButtonExample(),
    );
  }
}

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  State<DropdownButtonExample> createState() => _DropdownButtonExampleState();
}

class _DropdownButtonExampleState extends State<DropdownButtonExample> {
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
        title: const Text('Nombre de la empresa'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // DropdownButton para la lista desplegable
            DropdownButton<String>(
              hint: const Text('Stock'),
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
        MaterialPageRoute(builder: (context) => const Pantalla1()),
      );
    } else if (opcion == 'Añadir material') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Pantalla2()),
      );
    } else if (opcion == 'Registro uso material') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Pantalla3()),
      );
    }
  }
}

// Pantallas de destino
class Pantalla1 extends StatelessWidget {
  const Pantalla1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stock producto'),
      ),
      body: const Center(
        child: Text('Agregar buscador'),
      ),
    );
  }
}

class Pantalla2 extends StatelessWidget {
  const Pantalla2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Agregar material'),
      ),
      body: const Center(
        child: Text('Agregar material'),
      ),
    );
  }
}

class Pantalla3 extends StatelessWidget {
  const Pantalla3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Registro uso material'),
      ),
      body: const Center(
        child: Text('Registro uso material'),
      ),
    );
  }
}
