//Instancias da classe, chat_list_page : converte objetos em widgets na tela
import 'package:aula01/domain/chats.dart';
import 'package:aula01/infra/conversa_repository.dart';
import 'package:flutter/material.dart';

class ChatListPage extends StatelessWidget {
   ConversaRepository repo = ConversaRepository();
   ChatListPage({super.key});
  // List<Conversa> conversas = [
  //   Conversa(
  //     contato:"Hizy",
  //     ultimaMsg:"Mulher tenho uma noticia!",
  //     hora: "12:00",
  //     naoLidas: 2,
  //     ),
  //     Conversa(contato: "Guilherme",
  //     ultimaMsg: "Oiii",
  //      hora: "14:40",
  //       naoLidas: 1,),
  // ];
  
  //  new({super.key});

   @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Conversas')),
      body: ListView.builder( itemCount: repo.conversas.length, 
                              itemBuilder: (BuildContext context,int i) {
        Conversa conversa = repo.conversas[i];

        return ListTile(
            title: Text(conversa.contato),
            subtitle: Text(conversa.ultimaMsg),
            leading: CircleAvatar(
            child: Text('JE'),
            backgroundColor: const Color.fromARGB(255, 127, 1, 141),
            foregroundColor: Colors.white,

            ),
            trailing: Column (mainAxisAlignment:MainAxisAlignment.spaceEvenly,
              children:
              [Text(conversa.hora),
              conversa.naoLidas > 0
               ? Badge(label: Text ('${conversa.naoLidas}'))
               : SizedBox(),
               ],

              ),
          
          );
      },)
    );
  }

}



