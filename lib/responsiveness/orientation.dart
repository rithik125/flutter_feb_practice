import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: MyScreen(),));
}

class MyScreen extends StatelessWidget {
  const MyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var orientation = MediaQuery.of(context).orientation;
    return Scaffold(
      body: orientation == Orientation.portrait ? ListScreen() : GridScreen(),
    );
  }
}

class ListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return Card(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(Icons.radar),
              Text("Data For List Items"),
              Icon(Icons.delete)
            ],
          ),
        );
      }),
    );
  }
}

class GridScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("PorTait Screen"),
      ),
      body: GridView.count(
        crossAxisCount: 5,
        children: List.generate(
            30,
            (index) => Card(
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image:
                                    AssetImage("assets/icons/man_male.png"))),
                      ),
                      Text("pizza Mania",style: TextStyle(fontWeight: FontWeight.bold),)
                    ],
                  ),
                ),),
      ),
    );
  }
}
