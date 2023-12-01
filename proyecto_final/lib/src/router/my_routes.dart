
import 'package:proyecto_final/src/pages/login_page.dart';
import 'package:flutter/material.dart';

//enumarate
enum Routes { home, login, images, listas, peticiones }

class MyRoutes {
  static final routes = {
    Routes.login.name: (BuildContext context) => LoginPage(),
  };
}