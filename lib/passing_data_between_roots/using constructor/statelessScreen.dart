import 'package:flutter/material.dart';

class StlessScreeen extends StatelessWidget {
  String name;
  String image;
   StlessScreeen({super.key, required this.name,required this.image});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 5,
        title: Text(name),
      ),
      body: Center(
        child: Image.network(image),
      ),
    );
  }
}
