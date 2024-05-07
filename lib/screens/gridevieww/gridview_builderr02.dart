import 'package:flutter/material.dart';

class GridView2 extends StatelessWidget {
  const GridView2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.builder(
        itemCount: 10,
          gridDelegate:
              SliverGridDelegateWithMaxCrossAxisExtent(maxCrossAxisExtent: 50),
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                leading: Icon(
                  Icons.person,
                  size: 30,
                ),title: Text("Myfriend"),
              ),
            );
          }),
    );
  }
}
