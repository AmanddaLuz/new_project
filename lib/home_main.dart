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
    return const MaterialApp(
      //Widget que define características típicas de um app
      //AppBar, actions, menus
      home: MyAppStateful()
    );
  }
}

class MyAppStateful extends StatefulWidget {
  const MyAppStateful({super.key});

  @override
  MyStatefulAppState createState() => MyStatefulAppState();
}

class MyStatefulAppState extends State<MyAppStateful> {
  static const text = ["I", "IG", "IGT", "IGTI"];
  int count = 0;

  void changeValue() {
    setState(() {
      if(count == 3){
        count = 0;
      } else{
        count++;
      }
    });
  }


  @override
  void initState(){
    super.initState();
    print("initState");
  }

  @override
  void didChangeDependencies(){
    super.didChangeDependencies();
    print("didChangeDependencies");
  }

  @override
  Widget build(BuildContext context) {
    print("build");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Primeiro Aplicativo - IGTI"),
      ),
      body: Column(
        children: <Widget>[
          Text(
            text[count],
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 32
            ),
          ),
          const SizedBox(height: 30),
          TextButton(
            style: TextButton.styleFrom(
              textStyle: const TextStyle(
                fontSize: 32
              )
            ),
              onPressed: changeValue,
              child: const Text("Alterar"))
        ],
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    print("dispose");
  }
}