import 'package:elite_skill/programs.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Context extends StatefulWidget {
  const Context({super.key});

  @override
  State<Context> createState() => _ContextState();
}

class _ContextState extends State<Context> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // First line
            Text(
              "Where the court meets ",
              style: TextStyle(
                fontFamily: 'Aquire',
                color: Colors.grey,
                fontSize: 18, // ✅ Fixed font size
                decoration: TextDecoration.none,
              ),
            ),

            // Second line (indented "canvas")
            Padding(
              padding: const EdgeInsets.only(left: 16), // ✅ Fixed padding
              child: Text(
                "THE canvas",
                style: TextStyle(
                  fontFamily: 'Aquire',
                  color: Colors.grey,
                  fontSize: 18, // ✅ Fixed font size
                  decoration: TextDecoration.none,
                ),
              ),
            ),

            const SizedBox(height: 12), // ✅ Fixed spacing

            // Paragraph text
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 20), // ✅ Fixed padding
                child: Text(
                  "At Elite Skills, we’re redefining youth development by "
                      "blending the structure and discipline of basketball with "
                      "the creativity of art. Since 2014, we’ve been helping kids "
                      "build confidence, ignite passion, and develop character. "
                      "From mastering the court to exploring artistic expression, "
                      "we empower young minds to grow, lead, and thrive.",
                  style: GoogleFonts.poppins(
                    color: Colors.grey,
                    fontSize: 13, // ✅ Fixed font size
                    decoration: TextDecoration.none,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),

            const SizedBox(height: 20), // ✅ Fixed spacing

            // Image Row + Programs
            Padding(
              padding: const EdgeInsets.only(left: 10), // ✅ Fixed padding
              child: Column(
                children: [
                  SizedBox(
                    //image height
                    height: screenWidth * 0.40,
                    child: Container(
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        padding: EdgeInsets.only(left: screenWidth * 0.15),
                        children: [
                          Image.asset('assets/goal.gif', height: screenWidth * 0.30),
                          SizedBox(width: screenWidth * 0.05),
                          Image.asset('assets/goal2.gif', height: screenWidth * 0.18),
                          SizedBox(width: screenWidth * 0.05),
                          Image.asset('assets/goal1.gif', height: screenWidth * 0.18),

                        ],
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Programs(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
