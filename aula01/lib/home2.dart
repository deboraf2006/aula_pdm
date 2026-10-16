import 'package:flutter/material.dart';

class Home2 extends StatelessWidget {
  const new({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Minha Aula"),),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Aula de hoje", style: TextStyle(fontSize: 18),),
                  SizedBox(height: 12,),
                  Text("Widgets e composição", style: TextStyle(fontSize: 16),),
                  SizedBox(height: 12,),
                  Text("Aprendendo a contruir interfaces com flutter", style: TextStyle(fontSize: 14),),
                  SizedBox(height: 12,),
                  ElevatedButton(onPressed: () {},child: Text("Começa aula"),),
                  SizedBox(height: 12,),
                ],
              ),
            ),
            
            SizedBox(height: 12,),
            Row(children: [
              Card(child: SizedBox(
                height: 120,
                width: 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.book), Text("Aula"), Text("12"),
                  ],
                ),
              ),),

              SizedBox(width: 20,),
              Card(child: SizedBox(
                height: 120,
                width: 120,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.check), Text("Exercicios"), Text("8"),
                  ],
                ),
              ),),
            ],),
          ],
        ),
      ),
    );
  }
}