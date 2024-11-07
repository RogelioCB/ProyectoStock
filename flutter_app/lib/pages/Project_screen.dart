import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class Project_screen extends StatefulWidget {
  const Project_screen({super.key});

  @override
  State<Project_screen> createState() => _Project_screenState();
}

class _Project_screenState extends State<Project_screen> {
  final TextEditingController _nameController = TextEditingController();

  // Función para guardar el nombre en Firebase
  Future<void> _addProjectToDatabase(String name) async {
    if (name.isNotEmpty) {
      // Guardar el nombre del proyecto en Firestore
      await FirebaseFirestore.instance.collection('projects').add({
        'name': name,
        'createdAt': FieldValue.serverTimestamp(),
      });

      // Mostrar un mensaje de éxito
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Proyecto añadido exitosamente')));
    } else {
      // Si el campo está vacío, mostrar un mensaje de error
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Por favor ingrese un nombre')));
    }
  }

  // Método para abrir el cuadro de diálogo de entrada
  void _showAddProjectDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Nuevo Proyecto'),
          content: TextField(
            controller: _nameController,
            decoration: InputDecoration(
              hintText: 'Ingrese el nombre del proyecto',
            ),
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                // Cerrar el diálogo sin hacer nada
                Navigator.of(context).pop();
              },
              child: Text('Cancelar'),
            ),
            TextButton(
              onPressed: () {
                // Obtener el nombre ingresado y guardarlo
                String projectName = _nameController.text.trim();
                _addProjectToDatabase(projectName);
                // Cerrar el diálogo
                Navigator.of(context).pop();
                // Limpiar el controlador
                _nameController.clear();
              },
              child: Text('Aceptar'),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue[900],
        title: Text('Proyectos'),
      ),
      body: Column(
        children: [
          // Espacio para el botón de añadir
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: IconButton(
              icon: const Icon(Icons.add_box),
              iconSize: 50,
              color: Colors.lightBlue,
              onPressed: _showAddProjectDialog, // Abre el cuadro de diálogo
            ),
          ),
          
          // StreamBuilder para mostrar proyectos activos
          Expanded(
            child: StreamBuilder<QuerySnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('projects')
                  .orderBy('createdAt', descending: true) // Ordenar por fecha
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return Center(child: CircularProgressIndicator());
                }

                if (snapshot.hasError) {
                  return Center(child: Text('Error: ${snapshot.error}'));
                }

                if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
                  return Center(child: Text('No hay proyectos activos.'));
                }

                var projects = snapshot.data!.docs;

                return ListView.builder(
                  itemCount: projects.length,
                  itemBuilder: (context, index) {
                    var project = projects[index];
                    return Card(
                      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                      child: ListTile(
                        title: Text(project['name']),
                        subtitle: Text('Creado el: ${project['createdAt'].toDate().toString()}'),
                        trailing: IconButton(
                          icon: Icon(Icons.delete, color: Colors.red),
                          onPressed: () {
                            // Eliminar el proyecto de Firestore
                            FirebaseFirestore.instance.collection('projects').doc(project.id).delete();
                            ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Proyecto eliminado')));
                          },
                        ),
                      ),
                    );
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}