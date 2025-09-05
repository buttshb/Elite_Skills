import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'EliteSkillsArt_context.dart';

class KidsPlayingArea extends StatefulWidget {
  const KidsPlayingArea({super.key});

  @override
  State<KidsPlayingArea> createState() => _KidsPlayingAreaState();
}

class _KidsPlayingAreaState extends State<KidsPlayingArea> {
  @override
  Widget build(BuildContext context) {
    const double baseWidth = 390; // base design width for scaling
    final screenWidth = MediaQuery.of(context).size.width;
    final scale = screenWidth / baseWidth;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Container(
        color: Colors.black,
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/girl-Painting.png',
                  height: screenWidth * 0.18 * scale, // scaled
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: screenWidth * 0.034 * scale, // scaled
                    top: 50 * scale, // scaled
                  ),
                  child: Image.asset(
                    'assets/kids-group.png',
                    height: screenWidth * 0.20 * scale, // scaled
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: screenWidth * 0.02 * scale, // scaled
                    top: 5 * scale, // scaled
                  ),
                  child: Image.asset(
                    'assets/Boy-Painting.png',
                    height: screenWidth * 0.18 * scale, // scaled
                  ),
                ),
              ],
            ),
            SizedBox(height: 60 * scale), // scaled
            const EliteskillsartContext(),
          ],
        ),
      ),
    );
  }
}
