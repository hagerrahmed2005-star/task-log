import 'package:flutter/material.dart';
import '../widgets/product_card.dart';
import 'product_detail_screen/product_detail_screen.dart'; 
import 'account_screen.dart'; 

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  final List<Map<String, String>> exclusiveOffers = [
    {
      'title': 'Organic Bananas',
      'subtitle': '7pcs, Price',
      'price': '\$4.99',
      'imageUrl': 'assets/images/apple.png', 
    },
    {
      'title': 'Red Apple',
      'subtitle': '1kg, Price',
      'price': '\$4.99',
      'imageUrl': 'assets/images/apple.png',
    },
    {
      'title': 'Bell Pepper Red',
      'subtitle': '1kg, Price',
      'price': '\$2.99',
      'imageUrl': 'assets/images/apple.png',
    },
  ];

  final List<Map<String, String>> bestSelling = [
    {
      'title': 'Bell Pepper Red',
      'subtitle': '1kg, Price',
      'price': '\$4.99',
      'imageUrl': 'assets/images/apple.png',
    },
    {
      'title': 'Ginger',
      'subtitle': '250g, Price',
      'price': '\$2.99',
      'imageUrl': 'assets/images/apple.png',
    },
  ];


  List<Widget> get _screens => [
        _buildMainHomeContent(), 
        const Center(child: Text('Explore Screen')), 
        const Center(child: Text('Cart Screen')), 
        const Center(child: Text('Favourite Screen')), 
        const AccountScreen(), 
      ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex], 
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: (index) => setState(() => _selectedIndex = index),
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF53B175),
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.storefront), label: 'Shop'),
          BottomNavigationBarItem(
            icon: Icon(Icons.explore_outlined),
            label: 'Explore',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart_outlined),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_border),
            label: 'Favourite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Account',
          ),
        ],
      ),
    );
  }

  Widget _buildMainHomeContent() {
    return SafeArea(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Icon(Icons.location_on, color: Color(0xFF53B175), size: 20),
                  SizedBox(width: 5),
                  Text(
                    'Dhaka, Banasree',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 12),
                decoration: BoxDecoration(
                  color: const Color(0xFFF2F3F2),
                  borderRadius: BorderRadius.circular(15),
                ),
                child: const TextField(
                  decoration: InputDecoration(
                    hintText: 'Search Store',
                    border: InputBorder.none,
                    icon: Icon(Icons.search, color: Colors.grey),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.asset(
                  'assets/images/banner.png',
                  width: double.infinity,
                  height: 115,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 25),

            _buildSectionHeader('Exclusive Offer'),
            const SizedBox(height: 15),
            _buildHorizontalProductList(exclusiveOffers),
            const SizedBox(height: 25),

            _buildSectionHeader('Best Selling'),
            const SizedBox(height: 15),
            _buildHorizontalProductList(bestSelling),
            const SizedBox(height: 20),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const Text(
            'See all',
            style: TextStyle(
              color: Color(0xFF53B175),
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildHorizontalProductList(List<Map<String, String>> products) {
    return SizedBox(
      height: 230,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(left: 16.0),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final item = products[index];
          return Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                
                    builder: (context) => const ProductDetailScreen(),
                  ),
                );
              },
              child: ProductCard(
                title: item['title']!,
                subtitle: item['subtitle']!,
                price: item['price']!,
                imageUrl: item['imageUrl']!,
              ),
            ),
          );
        },
      ),
    );
  }
}