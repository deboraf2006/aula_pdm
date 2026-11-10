import 'package:aula01/features/chat/store/domain/entities/product.dart';
import 'package:aula01/features/chat/store/infra/data/product_repository.dart';
import 'package:aula01/features/chat/store/presentation/bloc/product_list_event.dart';
import 'package:aula01/features/chat/store/presentation/bloc/product_list_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ProductListBloc extends Bloc<ProductListEvent, ProductListState> {
  final ProductRepository productRepository = ProductRepository();

ProductListBloc(this.productRepository) : super(ProductListLoading()) {
    //Captura o evento de inicialização
    on<ProductListInitialize>((event, emit) async {
      await Future.delayed(Duration(seconds: 5));
      List<Product> dados = ProductRepository().);
      if (dados.isNotEmpty) {
        emit(ProductListSuccess(conversas: dados));
      } else {
        emit(ProductListFailure(msg: 'Sem dados'));
      }
    });

    //Isso aqui vai ajudar no comportamento Dupliar o evento conversa 

    on<ProductList>((event, emit) async{
      
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