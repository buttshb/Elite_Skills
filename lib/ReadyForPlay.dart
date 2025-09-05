import 'package:flutter/material.dart';
import 'New_Gallery.dart';

class Readyforplay extends StatefulWidget {
  const Readyforplay({super.key});

  @override
  State<Readyforplay> createState() => _ReadyforplayState();
}

class _ReadyforplayState extends State<Readyforplay> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              children: [
                Container(
                  // width: 300,
                  // height: 150,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/ReadyForPlay.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Center(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: List.generate(5,
                              (index) => Padding(
                            padding: const EdgeInsets.only(bottom: 12.0),
                            child: Text(
                              "READY FOR PLAY",
                              style: TextStyle(
                                fontFamily: 'Aquire',
                                fontSize: 10,
                                letterSpacing: 7,
                                fontWeight: FontWeight.normal,
                                color: Colors.grey.withAlpha(150),
                                decoration: TextDecoration.none,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                const NewGallery(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
