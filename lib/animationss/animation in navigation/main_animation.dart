import 'package:flutter/material.dart';
import 'package:flutter_feb_practice/animationss/animation%20in%20navigation/second_screen.dart';

class main_animationn extends StatefulWidget {
  const main_animationn({super.key});

  @override
  State<main_animationn> createState() => _main_animationnState();
}

class _main_animationnState extends State<main_animationn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
          Center(
            child: ElevatedButton(onPressed: (){
              Navigator.push(context, PageRouteBuilder(pageBuilder: (context,animation1,animation2){
                return Second_Screen();
              },transitionsBuilder: (context,animation1,animation2,child){
                return ScaleTransition(scale: Tween<double>(begin: 0.6,end: 1.0).animate(CurvedAnimation(parent: animation1, curve: Curves.fastLinearToSlowEaseIn)),child: child);
              },
              transitionDuration: Duration(milliseconds: 800)
              ));
            }, child: Text("SECOND PAGE")),

          ),
          ElevatedButton(onPressed: (){}, child: Text(""))
        ],
      ) ,
    );
  }
}
