import 'package:elite_skill/Gallery.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class EliteskillsartContext extends StatefulWidget {
  const EliteskillsartContext({super.key});

  @override
  State<EliteskillsartContext> createState() => _EliteskillsartContextState();
}

class _EliteskillsartContextState extends State<EliteskillsartContext> {
  // ✅ Bullet point widget with fixed scaling for all screen sizes
  Widget bulletPoint(String text, double scale) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10 * scale),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(top: 4 * scale),
            width: 5 * scale,
            height: 5 * scale,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          SizedBox(width: 8 * scale),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.poppins(
                color: Colors.white,
                fontSize: 10.5 * scale, // consistent font size
                decoration: TextDecoration.none,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // ✅ Base scale for consistent sizing across devices
    const double baseWidth = 390; // e.g. iPhone 12 width
    final double scale = screenWidth / baseWidth;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // ✅ Title (scaled text)
            Text(
              "Elite Skills Art: Where Young Artists Flourish ",
              style: GoogleFonts.aBeeZee(
                color: Colors.white,
                fontSize: 9 * scale, // consistent size
                decoration: TextDecoration.none,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: screenHeight * 0.015),

            // ✅ Paragraph section (scaled font + center-aligned)
            Align(
              alignment: Alignment.center,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12 * scale),
                child: Text(
                  "  Our Art Program empowers children to explore their "
                      "imagination through vibrant, hands-on projects and"
                      " canvas storytelling. Each session builds confidence, "
                      "hones artistic skills, and celebrates every child’s unique"
                      " voice.",
                  style: GoogleFonts.poppins(
                    color: Colors.white,
                    fontSize: 10.5 * scale,
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            const SizedBox(height: 10),

            // ✅ Section Header
            Text(
              "What Sets Us Apart",
              style: GoogleFonts.aBeeZee(
                color: Colors.white,
                fontSize: 11 * scale,
                decoration: TextDecoration.none,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 10),

            // ✅ Bullet list with consistent scale
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 12 * scale),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    bulletPoint(
                      "Immersive, hands-on sessions that inspire every young artist.",
                      scale,
                    ),
                    bulletPoint(
                      "Confidence-building projects designed to spark imagination and self-expression.",
                      scale,
                    ),
                    bulletPoint(
                      "Led by skilled instructors in a vibrant, professional setting.",
                      scale,
                    ),
                    bulletPoint(
                      "Seasonal showcases where every child’s artwork is celebrated.",
                      scale,
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // ✅ Keep the Gallery widget as-is
            const Gallery(),
          ],
        ),
      ),
    );
  }
}
