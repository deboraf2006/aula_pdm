//implemente uma lista de produtos utilizando objetos da entidade Product.
//Implemente um método responsável por retornar todos os produtos cadastrados no repositório.

import 'package:aula01/features/chat/store/domain/entities/product.dart';

class ProductRepository {
  // Lista privada simulando o armazenamento de dados
  final List<Product> _products = [
    Product(
      id: 1,
      nome: 'Mascara para cilios',
      categoria: 'Beleza',
      preco: 'R\$ 9,99',
      avaliacao: '4,9',
      url: 'https://cdn.dummyjson.com/product-images/beauty/essence-mascara-lash-princess/1.webp',
    ),

    Product(
      id: 2,
      nome: 'Roupas Femeninas',
      categoria: 'Estilo',
      preco: 'R\$ 140,00',
      avaliacao: '4,6',
      url: 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcRuo_HS3l9y--Sn1ZKTya-IGAvbNlrDqS1szfA2LHa8q6bcFJXB84WqvWT_UHKJrkVfSbf4Xb49yhhOwdTb2Vsg2nlpaFigohNgq7jRSJkZ7XgFfk3kcY7Zuw&usqp=CAc',
    ),
    Product(
      id: 3,
      nome: 'Roupas Femeninas',
      categoria: 'Estilo',
      preco: 'R\$ 140,00',
      avaliacao: '4,6',
      url: 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcRuo_HS3l9y--Sn1ZKTya-IGAvbNlrDqS1szfA2LHa8q6bcFJXB84WqvWT_UHKJrkVfSbf4Xb49yhhOwdTb2Vsg2nlpaFigohNgq7jRSJkZ7XgFfk3kcY7Zuw&usqp=CAc',
    ),
    Product(
       id: 4,
       nome: 'Creme Salon line',
       categoria: 'cósmetico',
       preco: 'R\$ 40,00',
       avaliacao: '4,5',
       url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ4uEYx0sX5yhzj-k8rbolERYiO_Hcza-JdirH0VwEKdQ&s=10',
    ),
  ];

  List<Product> getAllProducts() {
    return _products;
  }
}
