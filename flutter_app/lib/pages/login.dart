import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_app/widgets/my_textfild.dart';
import 'package:flutter_app/widgets/my_textfildPass.dart';
import 'home_screen.dart'; // Asegúrate de importar tu pantalla principal

class LoginPage extends StatelessWidget {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lock,
              size: 100,
            ),
            SizedBox(height: 50),
            Text(
              'Welcome back!',
              style: TextStyle(
                color: Colors.grey[700],
                fontSize: 16,
              ),
            ),
            SizedBox(height: 25),
            MyTextfild(
              controller: _usernameController,
              labelText: 'Email',
              obscureText: false,
            ),
            SizedBox(height: 10),
            MyTextfildpassword(
              controller: _passwordController,
              labelText: 'Password',
              // No necesitas especificar obscureText aquí
            ),
            SizedBox(height: 25),
            ElevatedButton(
              onPressed: () async {
                String email = _usernameController.text.trim();
                String password = _passwordController.text.trim();

                try {
                  UserCredential userCredential = await FirebaseAuth.instance
                      .signInWithEmailAndPassword(
                          email: email, password: password);

                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => PantallaPrincipal()),
                  );
                } catch (e) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text('Usuario o contraseña incorrectos')),
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.black,
                shape: const StadiumBorder(),
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
              ),
              child: SizedBox(
                width: double.infinity,
                child: Text(
                  'Login',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}