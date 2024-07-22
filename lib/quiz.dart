import 'package:flutter/material.dart';
import 'package:quiz_app/start_screen.dart';
import 'package:quiz_app/questions_screen.dart';
import 'package:quiz_app/data/questions.dart';
import 'package:quiz_app/results_screen.dart';

class Quiz extends StatefulWidget {
  const Quiz({super.key});
  @override
  State<Quiz> createState() {
    return _QuizState();
  }
}

class _QuizState extends State<Quiz> {
  //Widget? activeScreen;

  // @override
  // void initState() {
  //   // TODO: implement initState
  //   activeScreen = StartScreen(switchScreen);
  //   super.initState();
  // }
  var activeScreen = 'start-screen';
  List<String> selectAnswers = [];

  // void switchScreen() {
  //   setState(() {
  //     activeScreen = const QuestionsScreen();
  //   });
  // }
  void switchScreen() {
    setState(() {
      activeScreen = 'questions-screen';
    });
  }

  void chooseAnswers(String answer) {
    selectAnswers.add(answer);
    if (selectAnswers.length == questions.length) {
      setState(() {
        //selectAnswers = [];
        activeScreen = 'results-screen';
        // activeScreen = 'start-screen';
      });
    }
  }

  void restartQuiz() {
    setState(() {
      selectAnswers = [];
      activeScreen = 'questions-screen';
    });
  }

  @override
  Widget build(context) {
    Widget screenWidget = StartScreen(switchScreen);
    // if (activeScreen == 'start-screen') {
    //   screenWidget = StartScreen(switchScreen);
    // } else if (activeScreen == 'results-screen') {
    //   screenWidget = ResultsScreen(
    //     chosenAnswers: selectAnswers,
    //     onRestart: restartQuiz,
    //   );
    // } else {
    //   screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswers);
    // }
    if (activeScreen == 'questions-screen') {
      screenWidget = QuestionsScreen(
        onSelectAnswer: chooseAnswers,
      );
    }

    if (activeScreen == 'results-screen') {
      screenWidget = ResultsScreen(
        chosenAnswers: selectAnswers,
        onRestart: restartQuiz,
      );
    }
    // if (activeScreen == 'questions-screen') {
    //   screenWidget = QuestionsScreen(onSelectAnswer: chooseAnswers);
    // }
    // if (activeScreen == 'results-screen') {
    //   screenWidget = ResultsScreen(
    //     chosenAnswers: selectAnswers,
    //     onRestart: restartQuiz,
    //   );
    // }
    return MaterialApp(
      home: Scaffold(
          body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color.fromRGBO(66, 11, 161, 1),
              Color.fromARGB(255, 148, 118, 200),
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: screenWidget,
      )
          // child: activeScreen == 'start-screen'
          //     ? StartScreen(switchScreen)
          //     : QuestionsScreen(onSelectAnswer: chooseAnswers)),
          ),
    );
  }
}
