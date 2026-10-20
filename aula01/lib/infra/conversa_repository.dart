import 'package:aula01/domain/chats.dart';

class ConversaRepository {
  // BANCO DE DADOS
  

   List<Conversa> conversas = [
    Conversa(
      contato:"Hizy",
      ultimaMsg:"Mulher tenho uma noticia!",
      hora: "12:00",
      naoLidas: 2,
      ),
      Conversa(contato: "Guilherme",
      ultimaMsg: "Oiii",
       hora: "14:40",
        naoLidas: 1,),
  ];
}