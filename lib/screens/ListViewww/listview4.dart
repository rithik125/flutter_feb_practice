import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: ListView_Custom(),));
}

class ListView_Custom extends StatelessWidget {
  const ListView_Custom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.custom(
          childrenDelegate:
              SliverChildBuilderDelegate((context, index) => Card(
                child: ListTile(leading: CircleAvatar(
                  backgroundColor: Colors.green,
                  child: Icon(Icons.person_outline_outlined),
                ),
                title: Text("Arun"),
                subtitle: Text("123456"),
                trailing: Icon(Icons.phone),),
              ))),
      // body: ListView.custom(
      //     childrenDelegate:
      //         SliverChildListDelegate(List.generate(10, (index) => Card(
      //           child:
      // ListTile(leading: CircleAvatar(
      //   backgroundColor: Colors.green,
      //   child: Icon(Icons.person_outline_outlined),
      // ),
      //   title: Text("Arun"),
      //   subtitle: Text("123456"),
      //   trailing: Icon(Icons.phone),),
      //         )))),
    );
  }
}
