import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'Values.dart';

class Programs extends StatefulWidget {
  const Programs({super.key});

  @override
  State<Programs> createState() => _ProgramsState();
}

class _ProgramsState extends State<Programs> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    const baseWidth = 390; // standard mobile screen
    final scale = screenWidth / baseWidth;

    final isSmallScreen = screenWidth < 600;

    return Padding(
      padding: EdgeInsets.only(
        top: 60 * scale,
        right: 40 * scale,
        left: 30 * scale,
        bottom: 40 * scale,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Our Programs",
                    style: GoogleFonts.poppins(
                      fontSize: 19 * scale,
                      fontWeight: FontWeight.w700,
                      letterSpacing: 5,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20 * scale),
          Padding(
            padding: EdgeInsets.only(left: 22 * scale),
            child: isSmallScreen
                ? Column(
              children: [
                // 🏀 Basketball
                Column(
                  children: [
                    Image.asset(
                      "assets/basketbal.png",
                      height: 60 * scale,
                    ),
                    SizedBox(height: 8 * scale),
                    Text(
                      "BASKET BALL",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14 * scale,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    SizedBox(height: 6 * scale),
                    Text(
                      "Premier Art programs inspiring creativity",
                      style: TextStyle(
                        fontSize: 10 * scale,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 6 * scale),
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16 * scale,
                          vertical: 8 * scale,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(
                            color: Colors.white,
                            width: 2.0 * scale,
                          ),
                          borderRadius: BorderRadius.circular(8 * scale),
                        ),
                        child: Text(
                          "Programs",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16 * scale,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 30 * scale),

                // 🎨 Art
                Column(
                  children: [
                    Image.asset(
                      "assets/paint.png",
                      height: 60 * scale,
                    ),
                    SizedBox(height: 8 * scale),
                    Text(
                      "ART",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14 * scale,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    SizedBox(height: 6 * scale),
                    Text(
                      "Premier Art programs inspiring creativity",
                      style: TextStyle(
                        fontSize: 10 * scale,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 6 * scale),
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16 * scale,
                          vertical: 8 * scale,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(
                            color: Colors.white,
                            width: 2.0 * scale,
                          ),
                          borderRadius: BorderRadius.circular(8 * scale),
                        ),
                        child: Text(
                          "Programs",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16 * scale,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            )
                : Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // 🏀 Basketball
                Column(
                  children: [
                    Image.asset(
                      "assets/basketbal.png",
                      height: 60 * scale,
                    ),
                    SizedBox(height: 8 * scale),
                    Text(
                      "BASKET BALL",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14 * scale,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    SizedBox(height: 6 * scale),
                    Text(
                      "Premier Art programs inspiring creativity",
                      style: TextStyle(
                        fontSize: 6 * scale,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 6 * scale),
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16 * scale,
                          vertical: 8 * scale,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(
                            color: Colors.white,
                            width: 2.0 * scale,
                          ),
                          borderRadius: BorderRadius.circular(8 * scale),
                        ),
                        child: Text(
                          "Programs",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16 * scale,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),

                // 🎨 Art
                Column(
                  children: [
                    Image.asset(
                      "assets/paint.png",
                      height: 60 * scale,
                    ),
                    SizedBox(height: 8 * scale),
                    Text(
                      "ART",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 14 * scale,
                        fontWeight: FontWeight.bold,
                        decoration: TextDecoration.none,
                      ),
                    ),
                    SizedBox(height: 6 * scale),
                    Text(
                      "Premier Art programs inspiring creativity",
                      style: TextStyle(
                        fontSize: 6 * scale,
                        color: Colors.white,
                        decoration: TextDecoration.none,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 6 * scale),
                    TextButton(
                      onPressed: () {},
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 16 * scale,
                          vertical: 8 * scale,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(
                            color: Colors.white,
                            width: 2.0 * scale,
                          ),
                          borderRadius: BorderRadius.circular(8 * scale),
                        ),
                        child: Text(
                          "Programs",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16 * scale,
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SizedBox(height: 35 * scale),
          const OurValues(),
        ],
      ),
    );
  }
}
