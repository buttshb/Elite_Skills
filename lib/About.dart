import 'package:elite_skill/context.dart';
import 'package:flutter/material.dart';

class About extends StatefulWidget {
  const About({super.key});

  @override
  State<About> createState() => _AboutState();
}

class _AboutState extends State<About> {
  @override
  Widget build(BuildContext context) {
    // final screenWidth = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.only(top: 60, left: 0, right: 25, bottom: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Top Text
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "ABOUT US",
                  style: TextStyle(
                    fontFamily: 'Aquire', // Font family name from pubspec.yaml
                    fontSize: 40, // 🔧 Use fixed size instead of screenWidth * 0.12
                    fontWeight: FontWeight.w700,
                    letterSpacing: 5,
                    color: Colors.grey.shade400,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 50),
          const Context(),
        ],
      ),
    );
  }
}
