import 'package:flutter/material.dart';
import 'package:quiz_app/Quiz.dart';
// import 'package:quiz_app/start_screen.dart';

void main() {
  runApp(const Quiz()
      // MaterialApp(
      //   home: Scaffold(
      //     body: Container(
      //       decoration: const BoxDecoration(
      //         gradient: LinearGradient(
      //           colors: [
      //             Color.fromRGBO(81, 14, 197, 1),
      //             Color.fromARGB(255, 171, 137, 230),
      //           ],
      //           begin: Alignment.topLeft,
      //           end: Alignment.bottomRight,
      //         ),
      //       ),
      //       child: const StartScreen(),
      //     ),
      //   ),
      // ),
      );
}

// void printtext() {
//   print("object");
// }

// void main() {
//   runApp(
//     MaterialApp(
//       home: Scaffold(
//         body: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(colors: [
//               Colors.purple,
//               Colors.deepPurpleAccent,
//             ], begin: Alignment.topLeft, end: Alignment.bottomRight),
//           ),
//           child: Center(
//               child: Column(
//             mainAxisSize: MainAxisSize.max,
//             children: [
//               const SizedBox(height: 200),
//               Image.asset(
//                 "assets/quiz-logo.png",
//                 width: 300,
//               ),
//               const TextButton(
//                 onPressed: printtext,
//                 child: Text("Learn Flutter"),
//               )
//             ],
//           )

//               // Text(
//               //   "Learn Flutter",
//               //   style: TextStyle(
//               //     color: Colors.amber[300],
//               //     fontSize: 30,
//               //   ),
//               // ),
//               ),
//         ),
//       ),
//     ),
//   );
// }
