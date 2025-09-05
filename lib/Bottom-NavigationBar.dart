// import 'package:flutter/material.dart';
//
// class BottomNavigation extends StatefulWidget {
//   const BottomNavigation({super.key});
//
//   @override
//   State<BottomNavigation> createState() => _BottomNavigationState();
// }
//
// class _BottomNavigationState extends State<BottomNavigation> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         body: Container(), // Replace with actual body content
//         bottomNavigationBar: Container(
//           padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
//           color: Colors.black87,
//           child: Wrap(
//             alignment: WrapAlignment.center,
//             spacing: 24,
//             runSpacing: 12,
//             children: [
//               contactItem(
//                 icon: Icons.phone,
//                 label: '347-696-1989',
//                 onTap: () {},
//               ),
//               contactItem(
//                 icon: Icons.email,
//                 label: 'Info@EliteSkills.org',
//                 onTap: () {},
//               ),
//               contactItem(
//                 icon: Icons.facebook,
//                 label: 'Facebook',
//                 onTap: () {},
//               ),
//               contactItem(
//                 icon: Icons.camera_alt,
//                 label: 'Instagram',
//                 onTap: () {},
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
//
//   Widget contactItem({
//     required IconData icon,
//     required String label,
//     required VoidCallback onTap,
//   }) {
//     return InkWell(
//       onTap: onTap,
//       child: Row(
//         mainAxisSize: MainAxisSize.min,
//         children: [
//           Icon(icon, color: Colors.white, size: 18),
//           const SizedBox(width: 6),
//           Text(
//             label,
//             style: const TextStyle(
//               color: Colors.white,
//               fontSize: 13,
//               decoration: TextDecoration.none,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
