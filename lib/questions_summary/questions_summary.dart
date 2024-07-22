import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'dart:developer';
import 'dart:developer' as developer;

import 'package:quiz_app/questions_summary/questions_identifier.dart';
import 'package:quiz_app/questions_summary/summary_item.dart';

class QuestionsSummary extends StatelessWidget {
  const QuestionsSummary(this.summaryData, {super.key});

  final List<Map<String, Object>> summaryData;

  @override
  Widget build(BuildContext context) {
    //int questionIndex =0;

    return SizedBox(
      height: 400,
      child: SingleChildScrollView(
          child: Column(
        children: summaryData.map(
          (data) {
            return SummaryItem(data);
          },
        ).toList(),
      )),

      // height: 300,
      // child: SingleChildScrollView(
      //   child: Column(
      //     children: summaryData.map(
      //       (data) {
      //         return Row(children: [
      //           //const print(data['question_index']),
      //           //log(data['question_index'] as String);
      //           // print(''),
      //           // Text(
      //           //   ((data['question_index'] as int) + 1).toString(),
      //           //   // style: GoogleFonts.roboto(backgroundColor: Colors.blueGrey),
      //           // ),

      //           QuestionsIdentifier(isCorrectAnswer: isCorrectAnswer(), questionIndex: data['question_index'] as int),
      //           Expanded(
      //             child: Column(
      //               children: [
      //                 Text(data['question'] as String),
      //                 const SizedBox(height: 5),
      //                 Text(data['user_answer'] as String),
      //                 Text(data['correct_answer'] as String),
      //               ],
      //             ),
      //           )
      //         ]);
      //       },
      //     ).toList(),
      //   ),
      // ),
    );
  }
}
