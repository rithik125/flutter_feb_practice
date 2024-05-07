import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: StackEx(),));
}

class StackEx extends StatelessWidget {
  const StackEx({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              color: Colors.black,
              width: double.infinity,
              height: double.infinity,
            ),
            Container(
              color: Colors.red,
              width: 100,
              height: 100,
            ),
            Positioned(
              bottom: 50,
              right: 300,
              child: Container(
                color: Colors.yellow,
                height: 80,
                width: 80,
              ),
            ),
            Container(
              color: Colors.green,
              height: 60,
              width: 60,
            ),
          ],
        ),
      ),
    );
  }
}
