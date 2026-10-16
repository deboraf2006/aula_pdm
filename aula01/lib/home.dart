import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Bem Vindo"),),
      body: Container(color: const Color.fromARGB(255, 229, 22, 22)),
      floatingActionButton: OutlinedButton(onPressed: () {}, child: Icon(Icons.add, color: Colors.red,)),
    );
  }
}
