import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gridview04(),));
}

class Gridview04 extends StatelessWidget {
  const Gridview04({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.extent(
        maxCrossAxisExtent: 50,
        children: List.generate(
            80,
            (index) => Container(
                  decoration:
                      BoxDecoration(borderRadius:
                      BorderRadius.circular(30)),
              child: Icon(Icons.star,size: 20,),
                )),
      ),
    );
  }
}
