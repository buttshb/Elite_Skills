import 'package:flutter/material.dart';
import 'Footer.dart';

class LearnMore extends StatelessWidget {
  const LearnMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 🔽 Text Section with Padding
          Padding(
            padding: const EdgeInsets.only(left: 145),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Learn",
                        style: TextStyle(
                          fontFamily: 'Aquire',
                          fontSize: 10,
                          fontWeight: FontWeight.normal,
                          // letterSpacing: 3,
                          color: Colors.grey.shade400,
                        ),
                      ),
                      // WidgetSpan(
                      //   child: Padding(
                      //     padding: const EdgeInsets.only(right: 10, left: 4),
                      //     child: Text(
                      //       "MORE",
                      //       style: TextStyle(
                      //         fontFamily: 'Aquire',
                      //         fontSize: 10,
                      //         fontWeight: FontWeight.normal,
                      //         // letterSpacing: 1.3,
                      //         color: Colors.grey,
                      //         decoration: TextDecoration.none,
                      //       ),
                      //     ),
                      //   ),
                      // ),
                    ],
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),

          // 🔽 Footer placed outside padding
          const Footer(),
        ],
      ),
    );
  }
}
