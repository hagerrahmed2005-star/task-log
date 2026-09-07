import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  
  List<Map<String, dynamic>> cartItems = [
    {
      'name': 'Bell Pepper Red',
      'volume': '1kg, Price',
      'price': 4.99,
      'quantity': 1,
      'image': 'assets/images/cart6863.png',
    },
    {
      'name': 'Egg Chicken Red',
      'volume': '4pcs, Price',
      'price': 1.99,
      'quantity': 1,
      'image': 'assets/images/cart6865.png',
    },
    {
      'name': 'Organic Bananas',
      'volume': '12kg, Price',
      'price': 3.00,
      'quantity': 1,
      'image': 'assets/images/cart6866.png',
    },
    {
      'name': 'Ginger',
      'volume': '250gm, Price',
      'price': 2.99,
      'quantity': 1,
      'image': 'assets/images/cart6864.png',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'My Cart',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        children: [
          const Divider(height: 1, color: Color(0xFFE2E2E2)),
          
  
          Expanded(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              itemCount: cartItems.length,
              separatorBuilder: (context, index) => const Divider(
                height: 30,
                color: Color(0xFFE2E2E2),
              ),
              itemBuilder: (context, index) {
                final item = cartItems[index];
                return Row(
                  children: [
          
                    Image.asset(
                      item['image'],
                      width: 70,
                      height: 70,
                      fit: BoxFit.contain,
                    ),
                    const SizedBox(width: 20),
                    
            
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                item['name'],
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    cartItems.removeAt(index);
                                  });
                                },
                                child: const Icon(
                                  Icons.close,
                                  color: Color(0xFF7C7C7C),
                                  size: 20,
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 4),
                          Text(
                            item['volume'],
                            style: const TextStyle(
                              fontSize: 13,
                              color: Color(0xFF7C7C7C),
                            ),
                          ),
                          const SizedBox(height: 12),
                          Row(
                            children: [
                        
                              _buildQuantityButton(
                                icon: Icons.remove,
                                color: Colors.transparent,
                                iconColor: const Color(0xFFB3B3B3),
                                onTap: () {
                                  if (item['quantity'] > 1) {
                                    setState(() {
                                      item['quantity']--;
                                    });
                                  }
                                },
                              ),
                              const SizedBox(width: 12),
                              Text(
                                '${item['quantity']}',
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              const SizedBox(width: 12),
                      
                              _buildQuantityButton(
                                icon: Icons.add,
                                color: Colors.white,
                                iconColor: const Color(0xFF53B175),
                                onTap: () {
                                  setState(() {
                                    item['quantity']++;
                                  });
                                },
                              ),
                              const Spacer(),
                    
                              Text(
                                '\$${(item['price'] * item['quantity']).toStringAsFixed(2)}',
                                style: const TextStyle(
                                  fontSize: 18,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                );
              },
            ),
          ),

        
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: SizedBox(
              width: double.infinity,
              height: 67,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFF53B175),
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(19),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Spacer(flex: 2),
                    const Text(
                      'Go to Checkout',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    const Spacer(),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                      decoration: BoxDecoration(
                        color: const Color(0xFF489E67),
                        borderRadius: BorderRadius.circular(4),
                      ),
                      child: const Text(
                        '\$12.96',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildQuantityButton({
    required IconData icon,
    required Color color,
    required Color iconColor,
    required VoidCallback onTap,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: const Color(0xFFE2E2E2),
            width: 1,
          ),
        ),
        child: Icon(
          icon,
          color: iconColor,
          size: 20,
        ),
      ),
    );
  }
}