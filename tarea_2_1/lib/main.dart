import 'package:flutter/material.dart';
import 'package:tarea_2_1/homepage.dart';
import 'detalle_contacto_screen.dart'; // Importa la pantalla de detalle

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contactos',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Homepage(),
        '/detalle_contacto': (context) => const DetalleContactoScreen(contacto: {},),
      },
    );
  }
}