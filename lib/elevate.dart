import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'About.dart';

class Elevate extends StatefulWidget {
  const Elevate({super.key});

  @override
  State<Elevate> createState() => _ElevateState();
}

class _ElevateState extends State<Elevate> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<Offset> _slideAnimation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);

    _slideAnimation = Tween<Offset>(
      begin: const Offset(0, 0.2),
      end: Offset.zero,
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeInOut),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // final screenWidth = MediaQuery.of(context).size.width;
    // final screenHeight = MediaQuery.of(context).size.height;

    return SingleChildScrollView(
      padding: const EdgeInsets.only(
        top: 60.0,
        left: 20.0,
        right: 20.0,
        bottom: 40.0,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SlideTransition(
            position: _slideAnimation,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "ELEVATE",
                  style: TextStyle(
                    fontFamily: 'Aquire',
                    fontSize: 48.0, // ✅ fixed
                    fontWeight: FontWeight.w700,
                    letterSpacing: 7,
                    color: Colors.grey.shade400,
                  ),
                ),
                const SizedBox(height: 3.0),
                const Padding(
                  padding: EdgeInsets.only(left: 200.0),
                  child: Text(
                    "YOUR POTENTIAL",
                    style: TextStyle(
                      fontFamily: 'Rajdhani',
                      fontSize: 18.0,
                      fontWeight: FontWeight.w500,
                      letterSpacing: 1.5,
                      color: Colors.white,
                    ),
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 30.0),

          Image.asset(
            'assets/card.gif',
            width: double.infinity,
            height: 200.0, // ✅ fixed
            fit: BoxFit.cover,
          ),

          const SizedBox(height: 30.0),

          Image.asset(
            'assets/reach-card.gif',
            width: double.infinity,
            height: 200.0, // ✅ fixed
            fit: BoxFit.cover,
          ),

          const SizedBox(height: 30.0),

          SlideTransition(
            position: _slideAnimation,
            child: RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "REACH\n",
                    style: TextStyle(
                      fontFamily: 'Aquire',
                      fontSize: 40.0, // ✅ fixed
                      fontWeight: FontWeight.w700,
                      letterSpacing: 5,
                      color: Colors.grey.shade400,
                    ),
                  ),
                  TextSpan(
                    text: "BEYOND ",
                    style: TextStyle(
                      fontFamily: 'Aquire',
                      fontSize: 35.0, // ✅ fixed
                      fontWeight: FontWeight.w700,
                      letterSpacing: 5,
                      color: Colors.grey.shade400,
                    ),
                  ),
                  TextSpan(
                    text: "EXPECTATIONS",
                    style: TextStyle(
                      fontFamily: 'Aquire',
                      fontSize: 30.0, // ✅ fixed
                      fontWeight: FontWeight.w700,
                      letterSpacing: 5,
                      color: Colors.grey.shade300,
                    ),
                  ),
                ],
              ),
            ),
          ),

          const SizedBox(height: 2.0),

          const About(),
        ],
      ),
    );
  }
}
