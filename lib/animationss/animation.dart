import 'dart:html';

import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home:Animationn(),));
}

class Animationn extends StatefulWidget {
  const Animationn({super.key});

  @override
  State<Animationn> createState() => _AnimationnState();
}

class _AnimationnState extends State<Animationn>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationController;
  late Animation<Offset>animation1;

  @override
  void initState() {
    animationController =
        AnimationController(vsync: this, duration: Duration(seconds: 1));
    animation =
        Tween<double>(begin: 0.0, end: 1.0).animate(animationController);
    animation = Tween<double>(begin: 0, end:  2*3.14).animate(animationController);
    //   ..addListener(() {setState(() {
    //
    // });});
    animationController.repeat();
    animation1 = Tween<Offset>(begin: Offset(0, 0),end: Offset(1, 1)).animate(animationController);

    super.initState();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }
  void startAnimation(){
    if(animationController.isDismissed){
      animationController.forward();
    }else{
      animationController.reverse();
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RotationTransition(turns: animation,child: IconButton(onPressed: (){
          if(animationController.isCompleted){
            animationController.reverse();
          }else{
            animationController.forward();
          }
        }, icon: Icon(Icons.ac_unit,size: 40,)),),
      ),
      // body: InkWell(
      //   onTap: ()=> startAnimation,
      //   child: AnimatedIcon(icon: AnimatedIcons.play_pause, progress: animation),
      // ),
    );
  }

}
