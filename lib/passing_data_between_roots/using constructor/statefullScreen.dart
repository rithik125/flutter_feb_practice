import 'package:flutter/material.dart';

class StateFullls extends StatefulWidget {
 final String name;
 final String image;
 StateFullls({super.key, required this.name, required this.image});

  @override
  State<StateFullls> createState() => _StateFulllsState();
}

class _StateFulllsState extends State<StateFullls> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stalefull"),),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(widget.image),
            Text(widget.name)
          ],
        ),
      ),
    );
  }
}
