import 'package:flutter/material.dart';
import 'package:flutter_excel/excel.dart';
import 'dart:typed_data';
import 'package:flutter/services.dart' show rootBundle;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stock Carpintería',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: PrimeraPantalla(),
    );
  }
}

class PrimeraPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Stock Carpintería'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navegar a la segunda pantalla
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SegundaPantalla()),
            );
          },
          child: Text('Stock referencia'),
        ),
      ),
    );
  }
}

class SegundaPantalla extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Buscador de Productos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProductoPage(),
    );
  }
}

class ProductoPage extends StatefulWidget {
  @override
  _ProductoPageState createState() => _ProductoPageState();
}

class _ProductoPageState extends State<ProductoPage> {
  List<Map<String, String>> productos = [];
  List<Map<String, String>> productosFiltrados = [];

  @override
  void initState() {
    super.initState();
    _cargarDatosExcel();
  }

  Future<void> _cargarDatosExcel() async {
    // Cargar el archivo Excel desde los assets
    ByteData data = await rootBundle.load('assets/pruebastock.xlsx');
    var bytes = data.buffer.asUint8List();
    var excel = Excel.decodeBytes(bytes);

    List<Map<String, String>> tempProductos = [];

    // Leer las filas del Excel
    for (var table in excel.tables.keys) {
      var sheet = excel.tables[table];
      if (sheet == null) continue;

      for (int i = 1; i < sheet.rows.length; i++) {
        var row = sheet.rows[i];
        tempProductos.add({
          'Producto': row[0]?.value.toString() ?? '',
          'Ubicación': row[1]?.value.toString() ?? '',
          'Cantidad': row[2]?.value.toString() ?? '',
        });
      }
    }

    setState(() {
      productos = tempProductos;
      productosFiltrados = tempProductos;
    });
  }

  void _filtrarProductos(String query) {
    setState(() {
      productosFiltrados = productos
          .where((producto) =>
              producto['Producto']!.toLowerCase().contains(query.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Buscador de Productos'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: 'Buscar Producto',
                border: OutlineInputBorder(),
              ),
              onChanged: _filtrarProductos,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: productosFiltrados.length,
              itemBuilder: (context, index) {
                var producto = productosFiltrados[index];
                return ListTile(
                  title: Text(producto['Producto']!),
                  subtitle: Text(
                      'Ubicación: ${producto['Ubicación']} - Cantidad: ${producto['Cantidad']}'),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
