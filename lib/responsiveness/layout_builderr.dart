import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
void main(){
  runApp(MaterialApp(home: MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Responsive UI"),),
      body: ResponsiveLayouut(),
    );
  }
}

class ResponsiveLayouut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constrants) {
      if (constrants.maxWidth > 600) {
        return WideLayOut();
      } else {
        return SmallLayOut();
      }
    });
  }
}

class SmallLayOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [Column(
        children: [
          Container(
            color: Colors.green,
            height: 200,
            width: double.infinity,
            child: Text("Colum 1"),
          ),
          Container(
            color: Colors.red,
            width: double.infinity,
            height: 300,
            child: Text("Colum 2"),
          ),
          Container(
            color: Colors.yellowAccent,
            width: double.infinity,
            height: 300,
            child: Text("Colum 3"),
          ),
          Container(
            color: Colors.yellowAccent,
            height: 100,
            width: double.infinity,
            child: Text("Colum 3"),
          )
        ],
      ),
    ]
    );
  }
}

class WideLayOut extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          flex: 1,
          child: Container(
            child: Center(
                child: Text("Colum 3")),
            color: Colors.green,
            height: 200,
          ),
        ),
        Flexible(
          flex: 3,
          child: Container(
            child: Center(
                child: Center(child: Text("Colum 3"))),
            color: Colors.green,
            height: 300,
          ),
        ),
        Flexible(
          flex: 1,
          child: Container(
            child: Center(
                child: Center(child: Text("Colum 3"))),
            color: Colors.green,
            height: 200,
          ),
        )
      ],
    );
  }
}
