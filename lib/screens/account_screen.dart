import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const primaryColor = Color(0xFF53B175);

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(height: 20),
          
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  const CircleAvatar(
                    radius: 32,
                    backgroundColor: Color(0xFFF2F3F2),
                    child: Icon(Icons.person, size: 40, color: Colors.grey),
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
                              color: Color(0xFF181725),
                            ),
                          ),
                          SizedBox(width: 6),
                          Icon(Icons.edit_outlined, color: primaryColor, size: 18),
                        ],
                      ),
                      const SizedBox(height: 4),
                      const Text(
                        'Imshuvo97@gmail.com',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFF7C7C7C),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            const Divider(height: 1, thickness: 1, color: Color(0xFFE2E2E2)),

        
            Expanded(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                children: [
                  _buildAccountTile(
                    icon: Icons.shopping_bag_outlined,
                    title: 'Orders',
                    onTap: () {},
                  ),
                  _buildAccountTile(
                    icon: Icons.badge_outlined,
                    title: 'My Details',
                    onTap: () {},
                  ),
                  _buildAccountTile(
                    icon: Icons.location_on_outlined,
                    title: 'Delivery Address',
                    onTap: () {},
                  ),
                  _buildAccountTile(
                    icon: Icons.credit_card_outlined,
                    title: 'Payment Methods',
                    onTap: () {},
                  ),
                  _buildAccountTile(
                    icon: Icons.confirmation_number_outlined,
                    title: 'Promo Card',
                    onTap: () {},
                  ),
                  _buildAccountTile(
                    icon: Icons.notifications_none_outlined,
                    title: 'Notifications',
                    onTap: () {},
                  ),
                  _buildAccountTile(
                    icon: Icons.help_outline,
                    title: 'Help',
                    onTap: () {},
                  ),
                  _buildAccountTile(
                    icon: Icons.info_outline,
                    title: 'About',
                    onTap: () {},
                  ),
                ],
              ),
            ),

        
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: SizedBox(
                width: double.infinity,
                height: 60,
                child: ElevatedButton(
                  onPressed: () {
                  
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFF2F3F2),
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(19),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      Icon(Icons.logout, color: primaryColor),
                      SizedBox(width: 12),
                      Text(
                        'Log Out',
                        style: TextStyle(
                          color: primaryColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAccountTile({
    required IconData icon,
    required String title,
    required VoidCallback onTap,
  }) {
    return Column(
      children: [
        ListTile(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20, vertical: 2),
          leading: Icon(icon, color: const Color(0xFF181725), size: 24),
          title: Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: Color(0xFF181725),
            ),
          ),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Color(0xFF181725),
            size: 16,
          ),
          onTap: onTap,
        ),
        const Divider(height: 1, thickness: 1, color: Color(0xFFE2E2E2)),
      ],
    );
  }
}