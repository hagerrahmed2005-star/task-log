import 'package:flutter/material.dart';

class SearchResultsScreen extends StatelessWidget {
  const SearchResultsScreen({super.key});


  final List<Map<String, dynamic>> products = const [
    {
      'name': 'Egg Chicken Red',
      'volume': '4pcs, Price',
      'price': '\$1.99',
      'image': 'assets/images/Group 6824 (1).png',
    },
    {
      'name': 'Egg Chicken White',
      'volume': '180g, Price',
      'price': '\$1.50',
      'image': 'assets/images/Group 6840 (1).png',
    },
    {
      'name': 'Egg Pasta',
      'volume': '30gm, Price',
      'price': '\$15.99',
      'image': 'assets/images/Group 6841 (1).png',
    },
    {
      'name': 'Egg Noodles',
      'volume': '2L, Price',
      'price': '\$15.99',
      'image': 'assets/images/Group 6843 (1).png',
    },
    {
      'name': 'Mayonnais Eggless',
      'volume': '325ml, Price',
      'price': '\$4.99',
      'image': 'assets/images/Group 6844 (1).png',
    },
    {
      'name': 'Egg Noodles',
      'volume': '330ml, Price',
      'price': '\$4.99',
      'image': 'assets/images/Group 6845 (1).png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
          child: Column(
            children: [
          
              Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xFFF2F3F2),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: TextField(
                        controller: TextEditingController(text: 'Egg'),
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Icons.search, color: Colors.black),
                          suffixIcon: Icon(Icons.cancel, color: Color(0xFF7C7C7C), size: 20),
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.symmetric(vertical: 14),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  IconButton(
                    icon: const Icon(Icons.tune, color: Colors.black),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 20),

          
              Expanded(
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
            ],
          ),
        ),
      ),
    );
  }
}