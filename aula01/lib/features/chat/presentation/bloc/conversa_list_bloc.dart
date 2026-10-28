//eu gerencio os estados : logica de comunicação
import 'package:aula01/features/chat/domain/entities/conversa.dart';
import 'package:aula01/features/chat/infra/data/conversa_repository.dart';
import 'package:aula01/features/chat/presentation/bloc/conversa_list_event.dart';
import 'package:aula01/features/chat/presentation/bloc/conversa_list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ConversaListBloc extends Bloc<ConversaListEvent, ConversaListState> {
  final ConversaRepository conversaRepo = ConversaRepository();

  ConversaListBloc() : super(ConversaListLoading()) {
    //Captura o evento de inicialização
    on<ConversaListInitialize>((event, emit) async {
      await Future.delayed(Duration(seconds: 5));
      List<Conversa> dados = conversaRepo.conversas;
      if (dados.isNotEmpty) {
        emit(ConversaListSuccess(conversas: dados));
      } else {
        emit(ConversaListFailure(msg: 'Sem dados'));
      }
    });

    //Isso aqui vai ajudar no comportamento Dupliar o evento conversa 

    on<ConversaListDuplicaConversa>((event, emit) async{
      // as 2 primeiras linhas emit o loading pra exibir o carregamento da tela
      emit(ConversaListLoading());
      await Future.delayed(Duration(seconds: 1));

      //processo o evento de duplicacao
      conversaRepo.add(event.conversa);
      emit(ConversaListSuccess(conversas : conversaRepo.conversas));
    });
    //Dispara um evento de inicalização
    add(ConversaListInitialize());
  }
}
//