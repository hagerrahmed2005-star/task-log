import 'package:flutter/material.dart';

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
      'name': 'Apple & Grape\nJuice',
      'volume': '2L, Price',
      'price': '\$15.99',
      'image': 'assets/images/Group 6843.png',
    },
    {
      'name': 'Orenge Juice',
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
            childAspectRatio: 0.70,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
          ),
          itemBuilder: (context, index) {
            final item = products[index];
            return Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(18),
                border: Border.all(
                  color: const Color(0xFFE2E2E2),
                  width: 1,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  
                  Expanded(
                    child: Center(
                      child: Image.asset(
                        item['image'],
                        fit: BoxFit.contain,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
          
                  Text(
                    item['name'],
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 4),
        
                  Text(
                    item['volume'],
                    style: const TextStyle(
                      fontSize: 12,
                      color: Color(0xFF7C7C7C),
                    ),
                  ),
                  const Spacer(),
        
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        item['price'],
                        style: const TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      Container(
                        width: 42,
                        height: 42,
                        decoration: BoxDecoration(
                          color: const Color(0xFF53B175),
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                          size: 24,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}