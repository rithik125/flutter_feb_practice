import 'package:flutter/material.dart';
import 'package:flutter_feb_practice/miniquizzApp/modell_quizz.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  PageController controller = PageController();
  late List<String?> userAnswer;

  @override
  void initState() {
    userAnswer = List.filled(queAns.length, null);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
        controller: controller,
        itemCount: queAns.length,
        itemBuilder: (context, index) {
          return BuilderQuizPage(index);
        });
  }

  Widget BuilderQuizPage(int index) {
    return Padding(
      padding: const EdgeInsets.all(18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(queAns[index]['question']),
          SizedBox(height: 10,),
          Column(
            children: List.generate(queAns[index]['options'].length, (optionsindex) {
              String option = queAns[index]['options'][optionsindex];
              return InkWell(
                onTap: (){
                  setState(() {
                    userAnswer[index] = option;
                  });
                },
                child: RadioListTile(value: option, groupValue:userAnswer, onChanged: (value){}),
              );
            }),
          )
        ],
      ),
    );
  }
}
