import 'package:flutter/material.dart';

void main() {
  runApp(TelcelApp());
} //Funcion Principal

class TelcelApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'App Telcel',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: PaginaInicial());
  } //Widget
} //Clase TelcelApp Widget sin estado

class PaginaInicial extends StatefulWidget {
  PaginaInicial({Key? key}) : super(key: key);
  @override
  _PaginaInicialState createState() => _PaginaInicialState();
} //Widget con estado

class _PaginaInicialState extends State<PaginaInicial> {
  List<String> images = [
    "assets/images/imagen1.jpg",
    "assets/images/imagen2.jpg",
    "assets/images/imagen3.jpg",
    "assets/images/imagen1.jpg",
    "assets/images/imagen2.jpg",
    "assets/images/imagen3.jpg",
    "assets/images/imagen1.jpg",
    "assets/images/imagen2.jpg",
    "assets/images/imagen3.jpg",
    "assets/images/imagen1.jpg",
    "assets/images/imagen2.jpg",
    "assets/images/imagen3.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Tutorial GridView"),
        ),
        body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          childrenDelegate: SliverChildBuilderDelegate(
            (BuildContext, index) {
              return Image.asset(
                images[index],
                fit: BoxFit.cover,
              );
            },
            childCount: 12,
          ),
          padding: EdgeInsets.all(10),
          shrinkWrap: true,
        ));
  }
}
