import 'package:flutter/material.dart';
import 'package:flutter_feb_practice/miniquizzApp/quizz_page.dart';
void main(){
  runApp(MaterialApp(home: QuizMain(),));
}
class QuizMain extends StatelessWidget {
  const QuizMain({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("mini Quiz App"),),
      body: QuizPage(),

    );
  }
}
