import 'package:flutter/material.dart';
import 'package:flutter_feb_practice/miniquizzApp/mainQuizz.dart';
import 'package:flutter_feb_practice/passing_data_between_roots/viewss/shoedetails.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false,
        home: QuizMain(),
      routes: {
      'shoeDetails': (context)=>ShoeDetails()
      },
    );
  }
}
