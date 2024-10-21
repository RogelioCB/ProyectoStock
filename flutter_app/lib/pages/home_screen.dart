import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
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
      home: DropdownButtonExample(),
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
        MaterialPageRoute(builder: (context) => Pantalla1()),
      );
    } else if (opcion == 'Añadir material') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Pantalla2()),
      );
    } else if (opcion == 'Registro uso material') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Pantalla3()),
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
        title: Text('Stock producto'),
      ),
      body: Center(
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
        title: Text('Agregar material'),
      ),
      body: Center(
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
        title: Text('Registro uso material'),
      ),
      body: Center(
        child: Text('Registro uso material'),
      ),
    );
  }
}
