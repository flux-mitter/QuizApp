import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'dart:developer';
import 'dart:developer' as developer;

class QuestionsSummary extends StatelessWidget {
  QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;
  final bool flag = false;
  final Color indexColor = Color.fromARGB(255, 241, 87, 202);
  // Color indexColor() {
  //   // if (flag) {
  //   //   return Colors.amber;
  //   // } else {
  //   //   return Colors.amber;
  //   // }
  //   setState(() {});
  // }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: SingleChildScrollView(
        child: Column(
          children: summaryData.map(
            (data) {
              return Row(children: [
                //const print(data['question_index']),
                //log(data['question_index'] as String);
                // print(''),
                Text(
                  ((data['question_index'] as int) + 1).toString(),
                  style: GoogleFonts.roboto(backgroundColor: Colors.blueGrey),
                ),
                Expanded(
                  child: Column(
                    children: [
                      Text(data['question'] as String),
                      const SizedBox(height: 5),
                      Text(data['user_answer'] as String),
                      Text(data['correct_answer'] as String),
                    ],
                  ),
                )
              ]);
            },
          ).toList(),
        ),
      ),
    );
  }
}
