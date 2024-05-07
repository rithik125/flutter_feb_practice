import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Xyzreader_widgt extends StatelessWidget {
  final String? image;
  final String? title;
  final String? date;
  final String? placename;
  const Xyzreader_widgt({ this.image, this.title, this.date, this.placename});

  @override
  Widget build(BuildContext context) {
    return Card(elevation: 10,shadowColor: Colors.black,
      // child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(image!),
          SizedBox(height: 10,),
          Text(title!,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black),),
          SizedBox(height: 10,),
          Container(
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(date!,style: TextStyle(color: Colors.grey),),
                Text(placename!,style: TextStyle(color: Colors.grey),)
              ],
            ),
          )

        ],
      ),
      //),
    );
  }
}
