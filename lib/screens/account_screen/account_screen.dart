import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 20),
              
            
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Row(
                  children: [
                    const CircleAvatar(
                      radius: 32,
                    backgroundImage: AssetImage('assets/images/rectangle 82.png'),
                    ),
                    const SizedBox(width: 15),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Text(
                              'Afsar Hossen',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 6),
                            Icon(Icons.edit_outlined, color: Color(0xFF53B175), size: 18),
                          ],
                        ),
                        const SizedBox(height: 4),
                        const Text(
                          'Imshuvo97@gmail.com',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              const Divider(thickness: 1, color: Color(0xFFE2E2E2)),

            
              _buildMenuItem(Icons.shopping_bag_outlined, 'Orders', () {}),
              _buildMenuItem(Icons.badge_outlined, 'My Details', () {}),
              _buildMenuItem(Icons.location_on_outlined, 'Delivery Address', () {}),
              _buildMenuItem(Icons.credit_card_outlined, 'Payment Methods', () {}),
              _buildMenuItem(Icons.local_offer_outlined, 'Promo Cord', () {}),
              _buildMenuItem(Icons.notifications_none_outlined, 'Notifecations', () {}),
              _buildMenuItem(Icons.help_outline, 'Help', () {}),
              _buildMenuItem(Icons.info_outline, 'About', () {}),

              const SizedBox(height: 20),

      
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: ElevatedButton(
                  onPressed: () {
                    
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF2F3F2),
                    elevation: 0,
                    minimumSize: const Size(double.infinity, 60),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.logout, color: Color(0xFF53B175)),
                      SizedBox(width: 12),
                      Text(
                        'Log Out',
                        style: TextStyle(
                          color: Color(0xFF53B175),
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }


  Widget _buildMenuItem(IconData icon, String title, VoidCallback onTap) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
          leading: Icon(icon, color: Colors.black87),
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
              color: Colors.black87,
            ),
          ),
          trailing: const Icon(Icons.arrow_forward_ios, size: 16, color: Colors.black),
          onTap: onTap,
        ),
        const Divider(thickness: 1, color: Color(0xFFE2E2E2), height: 1),
      ],
    );
  }
}