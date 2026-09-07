import 'package:flutter/material.dart';
import '../widgets/product_card.dart';
import 'product_detail_screen/product_detail_screen.dart';
import 'cart_screen.dart';

class BeveragesScreen extends StatelessWidget {
  const BeveragesScreen({super.key});

  final List<Map<String, dynamic>> products = const [
    {
      'name': 'Diet Coke',
      'volume': '355ml, Price',
      'price': '\$1.99',
      'image': 'assets/images/Group 6874.png',
    },
    {
      'name': 'Sprite Can',
      'volume': '325ml, Price',
      'price': '\$1.50',
      'image': 'assets/images/Group 6841.png',
    },
    {
      'name': 'Apple & Grape Juice',
      'volume': '2L, Price',
      'price': '\$15.99',
      'image': 'assets/images/Group 6843.png',
    },
    {
      'name': 'Orange Juice',
      'volume': '2L, Price',
      'price': '\$15.99',
      'image': 'assets/images/Group 6845.png',
    },
    {
      'name': 'Coca Cola Can',
      'volume': '325ml, Price',
      'price': '\$4.99',
      'image': 'assets/images/Group 6844.png',
    },
    {
      'name': 'Pepsi Can',
      'volume': '330ml, Price',
      'price': '\$4.99',
      'image': 'assets/images/Group 6845.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new, color: Colors.black, size: 20),
          onPressed: () => Navigator.pop(context),
        ),
        centerTitle: true,
        title: const Text(
          'Beverages',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.tune, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
        child: GridView.builder(
          itemCount: products.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.68,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
          ),
          itemBuilder: (context, index) {
            final item = products[index];
            return ProductCard(
              title: item['name'],
              subtitle: item['volume'],
              price: item['price'],
              imageUrl: item['image'],
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProductDetailScreen(),
                  ),
                );
              },
              onAddTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const CartScreen(),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}