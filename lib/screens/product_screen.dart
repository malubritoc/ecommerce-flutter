import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  final String title;
  final String description;
  final double price;

  const ProductCard({
    super.key,
    required this.title,
    required this.description,
    required this.price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Área da imagem (placeholder por enquanto)
          Expanded(
            child: Container(
              color: Colors.grey[300],
              width: double.infinity,
              child: const Icon(Icons.image_not_supported, size: 50, color: Colors.grey),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                Text(description, maxLines: 2, overflow: TextOverflow.ellipsis, style: const TextStyle(fontSize: 12)),
                const SizedBox(height: 8),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('R\$ ${price.toStringAsFixed(2)}', style: const TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(padding: const EdgeInsets.symmetric(horizontal: 8)),
                      child: const Text('Comprar'),
                    )
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loja Online'),
        backgroundColor: Colors.blueAccent,
        actions: [
          IconButton(
            icon: const Icon(Icons.exit_to_app),
            onPressed: () {
              // Navegar de volta para a tela de login
              Navigator.pop(context);
            },
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.count(
          crossAxisCount: 2, // 2 colunas
          childAspectRatio: 0.7, // Ajusta a proporção da altura/largura
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
          children: const [
            ProductCard(
              title: 'Notebook',
              description: 'Notebook 15" com processador Intel i7',
              price: 3500.00,
            ),
            ProductCard(
              title: 'Mouse',
              description: 'Mouse sem fio com bateria de longa duração',
              price: 85.00,
            ),
            ProductCard(
              title: 'Teclado',
              description: 'Teclado RGB com switch mecânico',
              price: 450.00,
            ),
            ProductCard(
              title: 'Monitor',
              description: 'Monitor Full HD com painel IPS',
              price: 1200.00,
            ),
          ],
        ),
      ),
    );
  }
}