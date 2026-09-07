import 'package:flutter/material.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});


  final List<Map<String, dynamic>> categories = const [
    {
      'title': 'Fresh Fruits\n& Vegetable',
      'bgColor': Color(0xFFEEF8F1),
      'borderColor': Color(0xFF53B175),
      'image': 'assets/images/beef bone (1).png',
    },
    {
      'title': 'Cooking Oil\n& Ghee',
      'bgColor': Color(0xFFFFF6EE),
      'borderColor': Color(0xFFF8A44C),
      'image': 'assets/images/beef bone (2).png',
    },
    {
      'title': 'Meat & Fish',
      'bgColor': Color(0xFFFDE8E4),
      'borderColor': Color(0xFFF7A593),
      'image': 'assets/images/beef bone (3).png',
    },
    {
      'title': 'Bakery & Snacks',
      'bgColor': Color(0xFFF4EBF7),
      'borderColor': Color(0xD3B0E0E0),
      'image': 'assets/images/beef bone (4).png',
    },
    {
      'title': 'Dairy & Eggs',
      'bgColor': Color(0xFFFFF9E5),
      'borderColor': Color(0xFFFDE598),
      'image': 'assets/images/beef bone (5).png',
    },
    {
      'title': 'Beverages',
      'bgColor': Color(0xFFEDF7FC),
      'borderColor': Color(0xFFB2E0F4),
      'image': 'assets/images/beef bone.png',
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
          'Find Products',
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(height: 10),
          
            Container(
              decoration: BoxDecoration(
                color: const Color(0xFFF2F3F2),
                borderRadius: BorderRadius.circular(15),
              ),
              child: const TextField(
                decoration: InputDecoration(
                  hintText: 'Search Store',
                  hintStyle: TextStyle(color: Color(0xFF7C7C7C), fontSize: 14),
                  prefixIcon: Icon(Icons.search, color: Colors.black),
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.symmetric(vertical: 15),
                ),
              ),
            ),
            const SizedBox(height: 20),

        
            Expanded(
              child: GridView.builder(
                itemCount: categories.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 0.85,
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                ),
                itemBuilder: (context, index) {
                  final category = categories[index];
                  return Container(
                    decoration: BoxDecoration(
                      color: category['bgColor'],
                      borderRadius: BorderRadius.circular(18),
                      border: Border.all(
                        color: category['borderColor'],
                        width: 1,
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        // صورة التصنيف
                        Image.asset(
                          category['image'],
                          height: 90,
                          fit: BoxFit.contain,
                        ),
                        const SizedBox(height: 20),
                        // عنوان التصنيف
                        Text(
                          category['title'],
                          textAlign: TextAlign.center,
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
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
    );
  }
}