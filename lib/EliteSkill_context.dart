import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'EliteSkills_Art.dart';

class EliteskillContext extends StatefulWidget {
  const EliteskillContext({super.key});

  @override
  State<EliteskillContext> createState() => _EliteskillContextState();
}

class _EliteskillContextState extends State<EliteskillContext> {
  // ✅ Bullet point (with fixed sizes)
  Widget bulletPoint(String text) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 4.0),
            width: 6.0,
            height: 6.0,
            decoration: const BoxDecoration(
              color: Colors.white,
              shape: BoxShape.circle,
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: GoogleFonts.poppins(
                color: Colors.grey,
                fontSize: 12.0, // ✅ Fixed font size
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
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // ✅ Heading
            const SizedBox(height: 20),
            Text(
              "Elite Skills Basketball: Building Players On and Off the Court ",
              style: GoogleFonts.aBeeZee(
                color: Colors.white,
                fontSize: 14.0, // ✅ Fixed font size
                decoration: TextDecoration.none,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 20),

            // ✅ Paragraph
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Text(
                "Elite Skills offers a premier basketball experience "
                    "focused on skill development, teamwork, and growth. "
                    "Our programs, from weekend training to day, week and "
                    "summer camps, build confidence through expert coaching "
                    "and innovative training. With customized training and "
                    "dedicated coaches, we help every athlete reach their full potential.",
                style: GoogleFonts.poppins(
                  color: Colors.grey,
                  fontSize: 12.0, // ✅ Fixed font size
                  decoration: TextDecoration.none,
                ),
                textAlign: TextAlign.center,
              ),
            ),

            const SizedBox(height: 20),

            // ✅ Subheading
            Text(
              "What Sets Us Apart",
              style: GoogleFonts.aBeeZee(
                color: Colors.white,
                fontSize: 14.0, // ✅ Fixed font size
                decoration: TextDecoration.none,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            // ✅ Bullet Points
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  bulletPoint("Skill-focused training sessions led by experienced coaches."),
                  bulletPoint("Development in ball handling, shooting, defense, and footwork."),
                  bulletPoint("Age-appropriate drills and games that build confidence and teamwork."),
                  bulletPoint("Supportive environment that encourages growth on and off the court."),
                ],
              ),
            ),

            const SizedBox(height: 20),
            const EliteskillsArt(), // ✅ As-is
          ],
        ),
      ),
    );
  }
}
