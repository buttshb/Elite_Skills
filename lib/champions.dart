import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Ethos.dart';

class Champions extends StatefulWidget {
  const Champions({super.key});

  @override
  State<Champions> createState() => _ChampionsState();
}

class _ChampionsState extends State<Champions> {
  @override
  Widget build(BuildContext context) {
    // final screenWidth = MediaQuery.of(context).size.width;
    // final screenHeight = MediaQuery.of(context).size.height;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Column(
        children: [
          Image.asset("assets/Champions.png"),
          const SizedBox(height: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Top Text
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "CHAMPIONS",
                        style: TextStyle(
                          fontFamily: 'Aquire',
                          fontSize: 25, // ✅ Fixed font size
                          fontWeight: FontWeight.w700,
                          letterSpacing: 3,
                          color: Colors.grey.shade400,
                        ),
                      ),
                      const WidgetSpan(
                        child: Padding(
                          padding: EdgeInsets.only(left: 80), // ✅ Fixed padding
                          child: Text(
                            "OF YOUTH DEVELOPMENT",
                            style: TextStyle(
                              fontSize: 10, // ✅ Fixed font size
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w500,
                              letterSpacing: .1,
                              color: Colors.white,
                              decoration: TextDecoration.none,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20), // ✅ Fixed padding
                  child: Text(
                    "Elite Skills offers a premier basketball experience "
                        "focused on skill development, teamwork, and growth."
                        " Our programs, from weekend training to day, week and "
                        "summer camps, build confidence through expert "
                        "coaching and innovative training. With customized"
                        " training and dedicated coaches, we help every athlete"
                        " reach their full potential.",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      color: Colors.grey,
                      fontSize: 12, // ✅ Fixed font size
                      decoration: TextDecoration.none,
                    ),
                    textAlign: TextAlign.start,
                  ),
                ),
              ),
              const SizedBox(height: 50),
              const Ethos(),
            ],
          ),
        ],
      ),
    );
  }
}
