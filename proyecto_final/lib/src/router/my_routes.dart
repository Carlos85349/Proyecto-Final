import 'package:proyecto_final/src/pages/login_page.dart';
import 'package:proyecto_final/src/pages/peliculas_page.dart';
import 'package:proyecto_final/src/pages/pelicularating_page.dart';
import 'package:flutter/material.dart';

//enumarate
enum Routes { login, peliculas, rating }

class MyRoutes {
  static final routes = {
    Routes.login.name: (BuildContext context) => LoginPage(),
    Routes.peliculas.name: (BuildContext context) => LoginPage(),
    Routes.rating.name: (BuildContext context) => LoginPage(),
  };
}