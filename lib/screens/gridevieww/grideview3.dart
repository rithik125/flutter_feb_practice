import 'package:flutter/material.dart';
import 'dart:math' as math;

void main() {
  runApp(MaterialApp(
    home: Grideview03(),
  ));
}

class Grideview03 extends StatelessWidget {
  const Grideview03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.count(
          crossAxisCount: 2,
          childAspectRatio: 1.5,
          children: List.generate(
              10,
              (index) => Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Container(
                        width: 200,
                        decoration: BoxDecoration(
                            color: Color((math.Random().nextDouble() * 0xFFFFFF)
                                    .toInt())
                                .withOpacity(1.0),
                            borderRadius: BorderRadius.circular(20)),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.all(14.0),
                            child: ListTile(
                              leading: Icon(
                                Icons.home,
                                size: 40,
                                color: Colors.grey,
                              ),
                              title: Text(
                                "Heart Shaker",
                                style: TextStyle(
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                        )),
                  ))),
    );
  }
}
