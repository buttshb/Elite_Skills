import 'package:flutter/material.dart';
import 'EliteSkill_context.dart';

class EliteBasketball extends StatefulWidget {
  const EliteBasketball({super.key});

  @override
  State<EliteBasketball> createState() => _EliteBasketballState();
}

class _EliteBasketballState extends State<EliteBasketball> {
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
                child: Container(
                  color: Colors.black,
                  height: 200.0, // ✅ Fixed height
                  width: 350.0,  // ✅ Fixed width
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          'assets/EliteSkill.png',
                          height: 28.0, // ✅ Fixed image height
                        ),
                        const SizedBox(height: 15),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Train ",
                              style: TextStyle(
                                fontFamily: 'Aquire-Light',
                                color: Colors.white,
                                fontSize: 15.0, // ✅ Fixed font size
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
                                fontSize: 13.5, // ✅ Fixed font size
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
                                fontSize: 13.5, // ✅ Fixed font size
                                decoration: TextDecoration.none,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        TextButton(
                          onPressed: () {
                            // Navigation commented intentionally
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
                                fontSize: 12.0, // ✅ Fixed font size
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 2),
            const EliteskillContext(), // ✅ As is
          ],
        ),
      ),
    );
  }
}
