import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/firebase_options.dart';
import 'package:flutter_app/widgets/dropdown_stock_button_widget.dart';
import 'pages/home_screen.dart';
import 'pages/login.dart';
import 'widgets/Project_button.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final DropdownButtonMenuPrincipal dropdownButtonMenuPrincipal = DropdownButtonMenuPrincipal();
  final Project_button project_button = Project_button();

  @override
  Widget build(BuildContext context) {
    return MaterialApp( 
      title: 'Nombre de la empresa',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          
          appBarTheme: AppBarTheme(
            backgroundColor: Colors.grey[800],
          )),
        home: LoginPage()
    );
    
  }
}



