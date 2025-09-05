import 'package:flutter/material.dart';
import 'package:elite_skill/Bottom-NavigationBar.dart';

class Footer extends StatefulWidget {
  const Footer({super.key});

  @override
  State<Footer> createState() => _FooterState();
}

class _FooterState extends State<Footer> {
  // ✅ Properly closed widget method
  Widget buildImageWithText(String imagePath, String label) {
    return Column(
      children: [
        Image.asset(
          imagePath,
          width: double.infinity,
          fit: BoxFit.contain,
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(
            fontFamily: 'Aquire',
            fontSize: 14,
            color: Colors.grey,
            decoration: TextDecoration.none,
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Center(
      child: Container(
        width: screenWidth,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Top banner
            Image.asset(
              'assets/footer-card-5.png',
              width: double.infinity,
              height: screenHeight * 0.2,
              fit: BoxFit.cover,
            ),

            const SizedBox(height: 20),

            // List of footer items
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  buildImageWithText('assets/footer-card-1.jpg', 'VOLUNTEER'),
                  const SizedBox(height: 16),
                  buildImageWithText('assets/footer-card-2.png', 'INTERN'),
                  const SizedBox(height: 16),
                  buildImageWithText('assets/footer-card-3.png', 'VOLUNTEER'),
                  const SizedBox(height: 16),
                  buildImageWithText('assets/footer-card-4.png', 'INTERN'),
                  const SizedBox(height: 16),
                  buildImageWithText('assets/testinmonial-item5.png', 'INTERN'),
                  const SizedBox(height: 16),
                  buildImageWithText('assets/testinmonial-item6.png', 'INTERN'),
                ],
              ),
            ),

            const SizedBox(height: 30),

            // ✅ Bottom navigation bar only once
            // const BottomNavigation(),
          ],
        ),
      ),
    );
  }
}
