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
         appBarTheme: AppBarTheme(
          backgroundColor: const Color.fromARGB(255, 143, 77, 155),
        )
      ),
      home: DropdownButtonExample(),
    );
  }
}

class DropdownButtonExample extends StatefulWidget {
  const DropdownButtonExample({super.key});

  @override
  _DropdownButtonExampleState createState() => _DropdownButtonExampleState();
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
            // Wrap DropdownButton in a Container to style it like an ElevatedButton
            Container(
              decoration: BoxDecoration(
                color: Theme.of(context).colorScheme.onSecondary, // ElevatedButton background color
                borderRadius: BorderRadius.circular(8), // ElevatedButton rounded corners
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3), // ElevatedButton shadow
                  ),
                ],
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16), // Add padding
              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  hint: const Text(
                    'Stock',
                    style: TextStyle(color: Color.fromARGB(255, 73, 11, 83)), // White text color
                  ),
                  value: _opcionSeleccionada,
                  icon: const Icon(Icons.arrow_drop_down, color: Color.fromARGB(255, 73, 11, 83)), // White arrow icon
                  dropdownColor: Theme.of(context).colorScheme.primary, // Dropdown background color
                  style: const TextStyle(color: Color.fromARGB(255, 73, 11, 83)), // White text inside the dropdown
                  onChanged: (String? nuevaOpcion) {
                    setState(() {
                      _opcionSeleccionada = nuevaOpcion;
                    });
                    _navegarAPantalla(context, nuevaOpcion);
                  },
                  items: _opciones.map<DropdownMenuItem<String>>((String opcion) {
                    return DropdownMenuItem<String>(
                      value: opcion,
                      child: Text(opcion, style: const TextStyle(color: Colors.white)), // White text in options
                    );
                  }).toList(),
                ),
              ),
            ),
            const SizedBox(height: 20), // Add spacing between the dropdown and button
            ElevatedButton(
              child: const Text('Proyecto'),
              onPressed: () {
                // Navigate to second route when tapped.
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SecondRoute()),
                );
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


class SecondRoute extends StatelessWidget {
  const SecondRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Proyectos'),
      ),
      body: const Center(
      ),
    );
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