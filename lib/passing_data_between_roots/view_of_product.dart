

import 'package:flutter/material.dart';
import 'package:flutter_feb_practice/model/class_work_ex.dart';
import 'package:flutter_feb_practice/refactoring_widgetss_shoesview.dart';


class ShoHome extends StatelessWidget {
  const ShoHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Shoes_Home_page"),
      ),
      body: ListView.builder(itemCount: sholist.length,itemBuilder: (context, index) {
        return InkWell(onTap:()=> Navigator.pushNamed(context, "shoeDetails",arguments: index),
          child: ShoesView01(
            imagepath: sholist[index].image,
            title: sholist[index].name,
          ),
        );
      }
      ),
    );
  }
}
