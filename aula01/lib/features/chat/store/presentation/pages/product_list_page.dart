import 'package:flutter/material.dart';

class ProductListPage extends StatelessWidget {
  const ProductListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Catálogo de Produtos'),
        backgroundColor: const Color(0xFF3F2B96), // Tom roxo inspirado no protótipo
        foregroundColor: Colors.white,
        actions: [
          IconButton(
            icon: const Icon(Icons.shopping_bag_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(8.0),
        children: const [
          ProductItemCard(
            name: 'Mascara para cilios',
            category: 'Beleza',
            price: 'R\$ 9,99',
            rating: '4,9',
            imageUrl: 'https://cdn.dummyjson.com/product-images/beauty/essence-mascara-lash-princess/1.webp',
          ),
          ProductItemCard(
            name: 'Roupas Femeninas',
            category: 'Estilo',
            price: 'R\$ 140,00',
            rating: '4,6',
            imageUrl: 'https://encrypted-tbn3.gstatic.com/shopping?q=tbn:ANd9GcRuo_HS3l9y--Sn1ZKTya-IGAvbNlrDqS1szfA2LHa8q6bcFJXB84WqvWT_UHKJrkVfSbf4Xb49yhhOwdTb2Vsg2nlpaFigohNgq7jRSJkZ7XgFfk3kcY7Zuw&usqp=CAc',
          ),
          ProductItemCard(
            name: 'Perfume Femenino',
            category: 'Fragrâncias',
            price: 'R\$ 49,99',
            rating: '4,8',
            imageUrl: 'https://cdn.dummyjson.com/product-images/fragrances/perfume-floral/1.webp',
          ),
          ProductItemCard(
            name: 'Mesa Compensado',
            category: 'Móveis',
            price: 'R\$ 329,00',
            rating: '4,5',
            imageUrl: 'https://cdn.dummyjson.com/product-images/furniture/wooden-table/1.webp',
          ),
        ],
      ),
    );
  }
}

// Widget auxiliar para manter o layout idêntico ao protótipo da Parte 1
class ProductItemCard extends StatelessWidget {
  final String name;
  final String category;
  final String price;
  final String rating;
  final String imageUrl;

  const ProductItemCard({
    super.key,
    required this.name,
    required this.category,
    required this.price,
    required this.rating,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 4.0),
      elevation: 1,
      child: ListTile(
        contentPadding: const EdgeInsets.all(8.0),
        leading: Image.network(
          imageUrl,
          width: 70,
          height: 70,
          fit: BoxFit.cover,
          errorBuilder: (context, error, stackTrace) => Container(
            width: 70,
            height: 70,
            color: const Color.fromARGB(255, 194, 233, 123),
            child: const Icon(Icons.image_not_supported),
          ),
        ),
        title: Text(
          name,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 4),
            Text(category, style: TextStyle(color: Colors.grey[600], fontSize: 13)),
            const SizedBox(height: 4),
            Row(
              children: [
                Text(
                  price,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                    fontSize: 15,
                  ),
                ),
                const Spacer(),
                const Icon(Icons.star, color: Color.fromARGB(255, 167, 124, 235), size: 18),
                const SizedBox(width: 4),
                Text(
                  rating,
                  style: const TextStyle(fontWeight: FontWeight.w500),
                ),
              ],
            ),
          ],
        ),
        trailing: const Icon(Icons.chevron_right),
      ),
    );
  }
}