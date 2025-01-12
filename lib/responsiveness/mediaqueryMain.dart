import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: MainPageMedia(),
  ));
}

class MainPageMedia extends StatelessWidget {
  bool? isLargeScreen;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    isLargeScreen = width > 600;
    return Scaffold(
      body: isLargeScreen == true ? BigScreen() : SmallScreen(),
    );
  }
}

class SmallScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[300],
        title: Text("Small Screen"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Container(
              height: 300,
              color: Colors.black38,
            ),
          ),
          Expanded(child: ListView.builder(itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                color: Colors.green.shade200,
                child: Center(child: Text("Video $index")),
              ),
            );
          }))
        ],
      ),
    );
  }
}

class BigScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red[900],
        title: Text("bigScreen Screen"),
      ),
      body: Row(
        children: [
          Expanded(
              child: Column(
            children: [
              Padding(
                padding: EdgeInsets.all(15),
                child: Container(
                  height: 300,
                  decoration: BoxDecoration(color: Colors.grey),
                ),
              ),
              Expanded(child: ListView.builder(itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    height: 100,
                    color: Colors.green.shade200,
                    child: Center(child: Text("comment $index")),
                  ),
                );
              })),
            ],
          )),
          Expanded(child: ListView.builder(itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 100,
                color: Colors.green.shade200,
                child: Center(child: Text("Video $index")),
              ),
            );
          }))
        ],
      ),
    );
  }
}
