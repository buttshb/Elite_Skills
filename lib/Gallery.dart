import 'package:elite_skill/champions.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Gallery extends StatefulWidget {
  const Gallery({super.key});

  @override
  State<Gallery> createState() => _GalleryState();
}

class _GalleryState extends State<Gallery> {
  // final ScrollController _scrollController = ScrollController();
  //
  // void _scrollToElevateSection() {
  //   _scrollController.animateTo(
  //     _scrollController.position.maxScrollExtent,
  //     duration: const Duration(seconds: 10),
  //     curve: Curves.easeInOut,
  //   );
  // }

  @override
  Widget build(BuildContext context) {
    const double baseWidth = 390; // base device width for scaling
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    final scale = screenWidth / baseWidth; // scaling factor

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SingleChildScrollView(
        // controller: _scrollController,
        child: Column(
          children: [
            Row(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.12),
                  child: Text(
                    "ELITE",
                    style: GoogleFonts.archivoBlack(
                      color: Colors.white,
                      fontSize: 20 * scale, // scaled font size
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                SizedBox(width: 4 * scale),
                Text(
                  "SKILLS",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 20 * scale,
                    decoration: TextDecoration.none,
                  ),
                ),
                SizedBox(width: 8 * scale),
                Text(
                  "ART",
                  style: GoogleFonts.archivoBlack(
                    color: const Color(0xFF74B72E),
                    fontSize: 20 * scale,
                    decoration: TextDecoration.none,
                  ),
                ),
              ],
            ),
            SizedBox(height: 2 * scale),
            Padding(
              padding: EdgeInsets.only(left: screenWidth * 0.04),
              child: Text(
                "GALLERY",
                style: GoogleFonts.poppins(
                  color: const Color(0xFF5C5C5C),
                  fontSize: 20 * scale,
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.none,
                ),
              ),
            ),
            SizedBox(height: 10 * scale),

            // Horizontal image slider with fixed heights scaled
            SizedBox(
              height: screenWidth * 0.40,
              child: Container(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  padding: EdgeInsets.only(left: screenWidth * 0.15),
                  children: [
                    Image.asset('assets/galery-1.jpg', height: 120 * scale),
                    SizedBox(width: screenWidth * 0.05),
                    Image.asset('assets/galery-6.jpg', height: 72 * scale),
                    SizedBox(width: screenWidth * 0.05),
                    Image.asset('assets/galery-2.jpg', height: 72 * scale),
                    SizedBox(width: screenWidth * 0.05),
                    Image.asset('assets/galery-5.jpg', height: 72 * scale),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),
            const Champions(),
          ],
        ),
      ),
    );
  }
}
