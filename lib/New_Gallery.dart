import 'package:elite_skill/Learn_More.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class NewGallery extends StatefulWidget {
  const NewGallery({super.key});

  @override
  State<NewGallery> createState() => _NewGalleryState();
}

class _NewGalleryState extends State<NewGallery> {
  Widget buildImageWithText(String imagePath, String label, double scale) {
    return Stack(
      alignment: Alignment.center,
      children: [
        ClipRRect(
          child: Image.asset(
            imagePath,
            height: 120 * scale, // scaled
            width: 120 * scale,  // scaled
            fit: BoxFit.contain,
          ),
        ),
        Container(
          // semi-transparent background for text can be added if needed
          padding: EdgeInsets.only(top: 80 * scale), // scaled
          child: Text(
            label,
            style: TextStyle(
              fontFamily: "Aquire",
              color: Colors.white,
              fontSize: 10 * scale, // scaled
              fontWeight: FontWeight.bold,
              decoration: TextDecoration.none,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    const baseWidth = 390; // base design width for scaling
    final screenWidth = MediaQuery.of(context).size.width;
    final scale = screenWidth / baseWidth;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SingleChildScrollView(
        child: Column(
          children: [
            Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: screenWidth * 0.12),
                  child: Text(
                    "PROGRAMS THAT INSPIRE",
                    style: TextStyle(
                      fontFamily: "Aquire",
                      color: Colors.white,
                      fontSize: screenWidth * 0.03, // already relative, good!
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.none,
                    ),
                  ),
                ),
                SizedBox(height: 8 * scale), // scaled
                Padding(
                  padding: EdgeInsets.only(left: 50 * scale), // scaled
                  child: Center(
                    child: Text(
                      "EXCELLENCE",
                      style: TextStyle(
                        fontFamily: "Aquire",
                        color: Colors.grey,
                        fontSize: screenWidth * 0.05, // relative, good!
                        decoration: TextDecoration.none,
                      ),
                    ),
                  ),
                ),
              ],
            ),

            SizedBox(
              height: screenWidth * 0.40, // relative, good!
              child: ListView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(left: screenWidth * 0.13),
                children: [
                  buildImageWithText('assets/Gallery-new1.png', 'FALL TRAINING', scale),
                  SizedBox(width: screenWidth * 0.01),
                  buildImageWithText('assets/Gallery-new2.png', 'SUMMER CAMP', scale),
                  SizedBox(width: screenWidth * 0.01),
                  buildImageWithText('assets/Gallery-new3.png', 'SUMMER TRAINING', scale),
                  SizedBox(width: screenWidth * 0.01),
                  buildImageWithText('assets/Gallery-new4.png', 'FALL TRAINING', scale),
                ],
              ),
            ),
            SizedBox(height: 20 * scale), // scaled
            const LearnMore(),
          ],
        ),
      ),
    );
  }
}
