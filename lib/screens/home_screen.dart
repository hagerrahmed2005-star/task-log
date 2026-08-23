import 'package:flutter/material.dart';
import '../widgets/product_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;

  // قائمة بيانات العروض الحصرية (Exclusive Offer)
  final List<Map<String, String>> exclusiveOffers = [
    {
      'title': 'Organic Bananas',
      'subtitle': '7pcs, Price',
      'price': '\$4.99',
      'imageUrl':
          'https://img.freepik.com/free-vector/vector-ripe-yellow-banana-bunch-isolated-white-background_1284-45456.jpg',
    },
    {
      'title': 'Red Apple',
      'subtitle': '1kg, Price',
      'price': '\$4.99',
      'imageUrl':
          'https://img.freepik.com/free-vector/fresh-red-apples-vector-illustration_1308-132338.jpg',
    },
    {
      'title': 'Bell Pepper Red',
      'subtitle': '1kg, Price',
      'price': '\$2.99',
      'imageUrl':
          'https://img.freepik.com/free-vector/red-bell-pepper-isolated_1308-115332.jpg',
    },
  ];

  // قائمة بيانات الأكثر مبيعاً (Best Selling)
  final List<Map<String, String>> bestSelling = [
    {
      'title': 'Bell Pepper Red',
      'subtitle': '1kg, Price',
      'price': '\$4.99',
      'imageUrl':
          'https://img.freepik.com/free-vector/red-bell-pepper-isolated_1308-115332.jpg',
    },
    {
      'title': 'Ginger',
      'subtitle': '250g, Price',
      'price': '\$2.99',
      'imageUrl':
          'https://img.freepik.com/free-vector/fresh-ginger-root-isolated-white-background_1284-45451.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
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
        centerTitle: true,
      ),

      // SingleChildScrollView هو المسؤول عن السكرول الرأسي للشاشة كلها
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // شريط البحث
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

            // قسم Exclusive Offer
            _buildSectionHeader('Exclusive Offer'),
            const SizedBox(height: 15),

            // السكرول الأفقي لكروت Exclusive Offer
            _buildHorizontalProductList(exclusiveOffers),
            const SizedBox(height: 25),

            // قسم Best Selling
            _buildSectionHeader('Best Selling'),
            const SizedBox(height: 15),

            // السكرول الأفقي لكروت Best Selling
            _buildHorizontalProductList(bestSelling),
            const SizedBox(height: 20),
          ],
        ),
      ),

      // الشريط السفلي
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

  // الهيدر الخاص بكل قسم
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

  // الـ Widget المسؤولة عن السكرول الأفقي للكروت
  Widget _buildHorizontalProductList(List<Map<String, String>> products) {
    return SizedBox(
      height: 230,
      child: ListView.builder(
        scrollDirection: Axis.horizontal, // تجعل الحركة أفقية يمين وشمال
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.only(left: 16.0),
        itemCount: products.length,
        itemBuilder: (context, index) {
          final item = products[index];
          return Padding(
            padding: const EdgeInsets.only(right: 15.0),
            child: ProductCard(
              title: item['title']!,
              subtitle: item['subtitle']!,
              price: item['price']!,
              imageUrl: item['imageUrl']!,
            ),
          );
        },
      ),
    );
  }
}
