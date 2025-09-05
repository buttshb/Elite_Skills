import 'package:elite_skill/Elite_BasketBall.dart';
import 'package:flutter/material.dart';

class Transformer extends StatefulWidget {
  const Transformer({super.key});

  @override
  State<Transformer> createState() => _TransformerState();
}

class _TransformerState extends State<Transformer> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    const baseWidth = 390; // iPhone 12 width for reference
    final scale = screenWidth / baseWidth;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // ✅ First Line with Scaling
            Padding(
              padding: EdgeInsets.only(top: 20 * scale),
              child: Text(
                "Real Stories and Real Transformer",
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 11.0 * scale,
                  decoration: TextDecoration.none,
                ),
              ),
            ),

            SizedBox(height: 20 * scale),

            // ✅ GIF Image with fixed scaling
            Image.asset(
              "assets/goal-33.gif",
              width: double.infinity,
              height: screenHeight * 0.2,
              fit: BoxFit.contain,
            ),

            SizedBox(height: 1 * scale),

            // ✅ EliteBasketball as is
            const EliteBasketball(),
          ],
        ),
      ),
    );
  }
}
