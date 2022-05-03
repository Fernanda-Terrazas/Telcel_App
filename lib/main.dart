import 'package:flutter/material.dart';
import 'package:terrazas/galeriapromo.dart';

void main() {
  runApp(TelcelApp());
} //Funcion Principal

class TelcelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App Telcel V2',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: PaginaInicial());
  } //Widget
} //Clase TelcelApp Widget sin estado
