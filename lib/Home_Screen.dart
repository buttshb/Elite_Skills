import 'package:flutter/material.dart';
import 'package:elite_skill/elevate.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final ScrollController _scrollController = ScrollController();

  void _scrollToElevateSection() {
    _scrollController.animateTo(
      _scrollController.position.maxScrollExtent,
      duration: const Duration(seconds: 10),
      curve: Curves.easeInOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    const double baseWidth = 390; // Base width for scaling (typical phone)
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final scale = screenWidth / baseWidth;

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        iconTheme: const IconThemeData(color: Colors.white),
        elevation: 0,
      ),
      endDrawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.white),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.black, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.ac_unit_sharp),
              title: Text('Appearence'),
            ),
            ListTile(
              leading: Icon(Icons.ac_unit_sharp),
              title: Text('Programs'),
            ),
            ListTile(
              leading: Icon(Icons.design_services_outlined),
              title: Text('Services'),
            ),
            ListTile(
              leading: Icon(Icons.production_quantity_limits),
              title: Text('Products'),
            ),
            ListTile(leading: Icon(Icons.info), title: Text('learnMore')),
            ListTile(
              leading: Icon(Icons.psychology),
              title: Text('Skills Hub'),
            ),
            ListTile(leading: Icon(Icons.info), title: Text('Guidelines&Info')),
          ],
        ),
      ),
      body: SingleChildScrollView(
        controller: _scrollController,
        child: Column(
          children: [
            // ⬆ Top Section
            Padding(
              padding: EdgeInsets.symmetric(vertical: 40 * scale),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/basketbal.png',
                        height: screenWidth * 0.13 * scale,
                      ),
                      SizedBox(width: screenWidth * 0.15 * scale),
                      Image.asset(
                        'assets/paint.png',
                        height: screenWidth * 0.15 * scale,
                      ),
                    ],
                  ),
                  SizedBox(height: 10 * scale),
                  Text(
                    "ELITESKILLS",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: screenWidth * 0.08 * scale,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 10 * scale,
                    ),
                  ),
                  SizedBox(height: 30 * scale),
                  Image.asset(
                    'assets/bg.jpg.png',
                    width: double.infinity,
                    height: screenHeight * 0.25 * scale,
                    fit: BoxFit.contain,
                  ),
                  SizedBox(height: 20 * scale),
                  IconButton(
                    icon: Icon(
                      Icons.arrow_downward,
                      size: 50 * scale,
                      color: Colors.white,
                    ),
                    onPressed: _scrollToElevateSection,
                  ),
                  Text(
                    "Scroll Down",
                    style: TextStyle(color: Colors.white, fontSize: 20 * scale),
                  ),
                ],
              ),
            ),

            // ⬇ Elevate Content Section
            const Elevate(),
          ],
        ),
      ),
    );
  }
}
