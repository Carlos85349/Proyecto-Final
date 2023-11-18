import 'package:flutter/material.dart';

class DetalleContactoScreen extends StatelessWidget {
  final Map<String, dynamic> contacto;

  const DetalleContactoScreen({Key? key, required this.contacto}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(contacto["nombre"]),
        backgroundColor: Colors.lightBlue,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: Colors.pink,
                radius: 30,
                child: Text(
                  contacto["nombre"][0], // Obtén la primera letra del nombre
                  style: const TextStyle(color: Colors.white, fontSize: 40),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                contacto["nombre"],
                style: const TextStyle(fontSize: 30),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  buildContactInfo(Icons.call, contacto["telefono"], "Llamar"),
                  buildContactInfo(Icons.message, "Mensaje de Texto", ""),
                  buildContactInfo(Icons.video_call, "Videollamar", ""),
                  buildContactInfo(Icons.send, "Enviar mensaje", ""),
                  buildContactInfo(Icons.phone, "Llamada de voz", ""),
                  buildContactInfo(Icons.videocam, "Videollamada", ""),
                ],
              ),
              const SizedBox(height: 20),
              Expanded(
                child: Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 10,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          "Informacion de contacto",
                          style: TextStyle(fontSize: 18),
                        ),
                        ContactInfoRow(
                          icon: Icons.call,
                          text: contacto["telefono"],
                          label: "Celular",
                        ),
                        ContactInfoRow(
                          icon: Icons.maps_ugc,
                          text: "Enviar mensaje a ${contacto["telefono"]}",
                          label: "",
                        ),
                        ContactInfoRow(
                          icon: Icons.contact_phone,
                          text: "Llamar a ${contacto["telefono"]}",
                          label: "",
                        ),
                        ContactInfoRow(
                          icon: Icons.duo,
                          text: "Videollamar a ${contacto["telefono"]}",
                          label: "",
                        ),
                        ContactInfoRow(
                          icon: Icons.send_outlined,
                          text: "Mensaje a ${contacto["telefono"]}",
                          label: "",
                        ),
                        ContactInfoRow(
                          icon: Icons.local_phone_outlined,
                          text: "Llamada de voz al ${contacto["telefono"]}",
                          label: "",
                        ),
                        ContactInfoRow(
                          icon: Icons.video_camera_front_outlined,
                          text: "Videollamada al ${contacto["telefono"]}",
                          label: "",
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildContactInfo(IconData icon, String text, String label) {
    return Column(
      children: [
        Icon(icon),
        const SizedBox(height: 5),
        Text(
          text,
          style: const TextStyle(fontSize: 12),
        ),
        if (label.isNotEmpty) ...[
          const SizedBox(height: 5),
          Text(
            label,
            style: const TextStyle(fontSize: 10),
          ),
        ],
      ],
    );
  }
}

class ContactInfoRow extends StatelessWidget {
  final IconData icon;
  final String text;
  final String label;

  const ContactInfoRow({
    Key? key,
    required this.icon,
    required this.text,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(icon),
        const SizedBox(width: 20),
        Text(text),
        if (label.isNotEmpty) ...[
          const SizedBox(width: 20),
          Text(label),
        ],
      ],
    );
  }
}