import 'package:bibun/screens/question_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';

import 'questions/differentials.dart';
import 'questions/exponentials.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: DifferentialProblemsScreen(),
    );
  }
}

class DifferentialProblemsScreen extends StatelessWidget {
  const DifferentialProblemsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    ;

    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(
            tabs: [
              Tab(text: '微分'),
              Tab(
                text: '指数法則',
              ),
              Tab(text: '微分方程式'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            QuestionScreen(questions: differentialProblems),
            QuestionScreen(questions: exponentialProblems),
            QuestionScreen(questions: differentialProblems),
          ],
        ),
      ),
    );
  }
}
