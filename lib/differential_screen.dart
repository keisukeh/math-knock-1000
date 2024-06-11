import 'package:bibun/questions/models/question.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tex/flutter_tex.dart';

class QuestionScreen extends StatelessWidget {
  final List<Question> questions;
  const QuestionScreen({super.key, required this.questions});

  @override
  Widget build(BuildContext context) {
    return TeXView(
      child: TeXViewColumn(
        children: [
          for (int index = 0; index < questions.length; index++) ...[
            TeXViewDocument(
              """
                <h4>問題 ${index + 1}</h4>
                <p>${questions[index].question}</p>
                """,
              style: const TeXViewStyle(
                textAlign: TeXViewTextAlign.left,
                padding: TeXViewPadding.all(10),
              ),
            ),
            TeXViewDetails(
              title: '解答',
              body: TeXViewDocument("""
                    <p>\\(${questions[index].answer}\\)</p>
                    """,
                  style: const TeXViewStyle(
                      padding: TeXViewPadding.only(left: 8, bottom: 24))),
              style: const TeXViewStyle(
                  padding: TeXViewPadding.only(left: 8, bottom: 8)),
            )
          ]
        ],
      ),
    );
  }
}
