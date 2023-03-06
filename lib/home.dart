import 'package:flutter/material.dart';

void main() {
  //chama a função runApp() que é do flutter
  runApp(const MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    // O MaterialApp é um widget que envolve vários outros
    //widget - Necessário no Material Design
    return MaterialApp(
      //Widget que define características típicas de um app
      //AppBar, actions, menus
      home: Scaffold(
        appBar: AppBar(
        title: const Text("Primeiro app - IGTI",)
        ),
        body: Column(
          children: <Widget>[
            const Text(
          "Olá turma! \nDesenvolvedor Mobile \nIGTI",
          textAlign: TextAlign.center,
          style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32
          ),
            ),
            const SizedBox(height: 30),
            TextButton(
              style: TextButton.styleFrom(
                textStyle: const TextStyle(fontSize: 20),
              ),
              onPressed: () {},
              child: const Text('Enabled'),
            ),
          ],
        ),
      ),
    );
  }
}