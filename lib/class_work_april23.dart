import 'package:flutter/material.dart';
import 'package:flutter_feb_practice/model/class_work_ex.dart';

class class_work_Aprile23 extends StatelessWidget {
  const class_work_Aprile23({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Model of mainScreen"),
      ),
      body: ListView.builder(itemBuilder: (context, index) {
        return InkWell(
          onTap: () =>
              Navigator.pushNamed(
                  context, "shoeDetails", arguments: sholist[index].id),
          child: Column(
            children: [
              Container(child: Image(image: NetworkImage(sholist[index].image!))),
              Text(sholist[index].name!)
            ],
          ),
        );
      }, itemCount: sholist.length,),
    );
  }
}
