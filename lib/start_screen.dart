import 'package:flutter/material.dart';
// import 'package:quiz_app/questions_screen.dart';
import 'package:google_fonts/google_fonts.dart';

class StartScreen extends StatelessWidget {
  const StartScreen(this.startQuiz, {super.key});

  final void Function() startQuiz;

  @override
  Widget build(context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            'assets/quiz-logo.png',
            width: 300,
            color: const Color.fromARGB(70, 255, 255, 255),
          ),
          // Opacity(
          //   opacity: 0.2,
          //   child: Image.asset(
          //     'assets/quiz-logo.png',
          //     width: 300,
          //   ),
          // ),
          const SizedBox(height: 80),
          Text(
            "Learn Flutter the fun way !",
            // style: TextStyle(
            //   color: Colors.white,
            //   fontSize: 24,
            // ),
            style: GoogleFonts.lobster(
              color: Colors.white,
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 30),
          OutlinedButton.icon(
            onPressed: startQuiz,
            style: OutlinedButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            icon: const Icon(Icons.arrow_circle_right_outlined),
            label: const Text(
              "Start Quiz",
              style: TextStyle(fontSize: 15),
            ),
          )
        ],
      ),
    );
  }
}
