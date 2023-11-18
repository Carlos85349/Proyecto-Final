import 'package:flutter/material.dart';
import 'package:tarea_2_1/contactos_data.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Contactos'),
      ),
      body: ListView.builder(
        itemCount: contactos.length,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(contactos[index]['nombre']),
            onTap: () {
              Navigator.pushNamed(
                context,
                '/detalle_contacto',
                arguments: contactos[index],
              );
            },
          );
        },
      ),
    );
  }
}