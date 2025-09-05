import 'package:elite_skill/kids_playing_area.dart';
import 'package:flutter/material.dart';

class EliteskillsArt extends StatefulWidget {
  const EliteskillsArt({super.key});

  @override
  State<EliteskillsArt> createState() => _EliteskillsArtState();
}

class _EliteskillsArtState extends State<EliteskillsArt> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SingleChildScrollView(
        child: Column(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 40.0,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // ✅ Fixed height instead of screenWidth * 0.11
                    Image.asset(
                      'assets/art-heading.png',
                      height: 45, // 👈 fixed height
                    ),
                    const SizedBox(height: 15),

                    // ✅ Row Texts with fixed sizes
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Train ",
                          style: TextStyle(
                            fontFamily: 'Aquire-Light',
                            color: Colors.white,
                            fontSize: 16, // 👈 fixed
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Text(
                          "Complete ",
                          style: TextStyle(
                            fontFamily: 'Aquire-Light',
                            color: Colors.white,
                            fontSize: 14, // 👈 fixed
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Text(
                          "Grow",
                          style: TextStyle(
                            fontFamily: 'Aquire-Light',
                            color: Colors.white,
                            fontSize: 14, // 👈 fixed
                            decoration: TextDecoration.none,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 5),

                    // ✅ Programs Button
                    TextButton(
                      onPressed: () {
                        // Add navigation logic if needed
                      },
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 8,
                        ),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(
                            color: Colors.white,
                            width: 2.0,
                          ),
                          borderRadius: BorderRadius.circular(8),
                        ),
                        child: const Text(
                          "Programs",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12, // 👈 fixed
                            decoration: TextDecoration.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),

            // ✅ Kids Playing Area (as-is)
            const KidsPlayingArea(),
          ],
        ),
      ),
    );
  }
}
