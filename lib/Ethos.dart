import 'package:flutter/material.dart';

import 'ReadyForPlay.dart';

class Ethos extends StatefulWidget {
  const Ethos({super.key});

  @override
  State<Ethos> createState() => _EthosState();
}

class _EthosState extends State<Ethos> {
  @override
  Widget build(BuildContext context) {
    // Base width for scaling (example: iPhone 12 width)
    const double baseWidth = 390;
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    // Scale factor to keep sizes fixed relative to baseWidth
    final scale = screenWidth / baseWidth;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20 * scale, vertical: 20 * scale),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "ETHOS",
                style: TextStyle(
                  fontFamily: 'Aquire',
                  fontSize: 25 * scale,
                  fontWeight: FontWeight.normal,
                  letterSpacing: 3 * scale,
                  color: Colors.grey.shade400,
                  decoration: TextDecoration.none,
                ),
              ),
              SizedBox(height: 20 * scale),
              Padding(
                padding: EdgeInsets.only(left: 40 * scale),
                child: Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Discipline, teamwork\n",
                          style: TextStyle(
                            fontFamily: 'Aquire',
                            fontSize: 11 * scale,
                            fontWeight: FontWeight.normal,
                            // letterSpacing: 5,
                            color: Colors.white,
                          ),
                        ),
                        WidgetSpan(
                          child: SizedBox(height: 18 * scale),
                        ),
                        TextSpan(
                          text: "and structure - the\n",
                          style: TextStyle(
                            fontFamily: 'Aquire',
                            fontSize: 12 * scale,
                            fontWeight: FontWeight.normal,
                            // letterSpacing: 5,
                            color: Colors.white,
                          ),
                        ),
                        WidgetSpan(
                          child: SizedBox(height: 18 * scale),
                        ),
                        TextSpan(
                          text: "path to excellence.",
                          style: TextStyle(
                            fontFamily: 'Aquire',
                            fontSize: 12 * scale,
                            fontWeight: FontWeight.normal,
                            // letterSpacing: 5,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20 * scale),
              Column(
                children: [
                  // Fix image height proportional to scale to keep layout stable
                  Image.asset(
                    "assets/ethosPic.png",
                    height: 200 * scale, // fixed image height with scale
                    fit: BoxFit.contain,
                  ),
                ],
              ),
              SizedBox(height: 40 * scale),
              const Readyforplay(),
            ],
          ),
        ),
      ),
    );
  }
}
