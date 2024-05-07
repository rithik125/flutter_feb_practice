import 'package:flutter/material.dart';

class Products extends StatelessWidget {
  const Products({  this.color,  this.image,  this.title, this.desc, this.price, this.click, this.sundesc});
  final Color? color;
  final String? image;
  final String? title;
  final String? desc;
  final String? sundesc;
  final String? price;
  final VoidCallback? click;

  @override
  Widget build(BuildContext context) {
    return Container(decoration: BoxDecoration(color: Colors.grey, borderRadius: BorderRadius.circular(50)),
      child: Column(
        children: [
          Image.asset(image!),
          Text(title!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
          Text(desc!,style: TextStyle(fontSize: 8,color: Colors.grey),),
          Text(sundesc!,style: TextStyle(fontSize: 8,color: Colors.grey),),
          Row(
            children: [
              Text('\$${price!}',style: TextStyle(fontSize: 10),),
              CircleAvatar(radius: 20,child: Icon(Icons.favorite_border),)

            ],
          ),

        ],
      ),
    );
  }
}
