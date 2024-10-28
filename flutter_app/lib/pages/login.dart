import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'home_screen.dart'; // Asegúrate de importar tu pantalla principal

class LoginPage extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(labelText: 'Email'), // Cambié a "Email"
            ),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(labelText: 'Password'),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () async {
                String email = _usernameController.text.trim();
                String password = _passwordController.text.trim();
                
                try {
                  // Intenta iniciar sesión con Firebase
                  UserCredential userCredential = await FirebaseAuth.instance
                      .signInWithEmailAndPassword(email: email, password: password);
                  
                  // Si el inicio de sesión es exitoso, navega a la pantalla principal
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => PantallaPrincipal()),
                  );
                } catch (e) {
                  // Muestra un mensaje de error si el inicio de sesión falla
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Usuario o contraseña incorrectos')),
                  );
                }
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }
}