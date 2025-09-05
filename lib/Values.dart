import 'package:elite_skill/Transformer.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class OurValues extends StatefulWidget {
  const OurValues({super.key});

  @override
  State<OurValues> createState() => _OurValuesState();
}

class _OurValuesState extends State<OurValues> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    const baseWidth = 390; // Reference device (iPhone 12 width)
    final scale = screenWidth / baseWidth;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // ✅ First line (Heading)
            Padding(
              padding: EdgeInsets.only(top: 20 * scale),
              child: Text(
                "Our Values",
                style: GoogleFonts.poppins(
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                  fontSize: 18 * scale,
                  decoration: TextDecoration.none,
                ),
              ),
            ),

            SizedBox(height: 15 * scale),

            // ✅ Paragraph text — Centered + Responsive
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 12 * scale),
              child: Text(
                "  Our coaches and instructors love by our core values:   "
                    "dedication, creativity, and growth. Whether on the court or"
                    "  in the studio; every team member shares the Elite Skills"
                    " mission to inspire the youth.",
                style: GoogleFonts.poppins(
                  color: Colors.grey,
                  fontSize: 9.5 * scale,
                  decoration: TextDecoration.none,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            SizedBox(height: 50 * scale),

            // ✅ Transformer widget — untouched
            const Transformer(),
          ],
        ),
      ),
    );
  }
}
