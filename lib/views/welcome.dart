// import 'package:flutter/material.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'India Sarkari',
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//       ),
//       home: const WelcomePage(),
//     );
//   }
// }
//
// class WelcomePage extends StatelessWidget {
//   const WelcomePage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Welcome'),
//         backgroundColor: Colors.blue,
//       ),
//       body: const Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             SizedBox(height: 20),
//             Text(
//               'Welcome',
//               style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
//             ),
//             SizedBox(height: 20),
//             Text(
//               'Online Test',
//               style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Colors.blue),
//             ),
//             SizedBox(height: 10),
//             Text(
//               'Typing Test',
//               style: TextStyle(fontSize: 22, fontWeight: FontWeight.w600, color: Colors.green),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }