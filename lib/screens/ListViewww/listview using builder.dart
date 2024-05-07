import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feb_practice/model/product_model.dart';



class ListView_Builder extends StatelessWidget {
  List<Product> Data = [
    Product(name: "Orange", numdata: 120, image: "assets/images/orange01.jpg"),
    Product(name: "kiwi", numdata: 120, image: "assets/images/kiwis01.jpg"),
    Product(name: "Apple", numdata: 120, image: "assets/images/apple00.jpg"),
    Product(name: "banana", numdata: 120, image: "assets/images/banana01.jpg"),
    Product(name: "cheery", numdata: 120, image: "assets/images/cheery01.jpg"),
    Product(name: "Avocado", numdata: 120, image: "assets/images/orange01.jpg"),
    Product(name: "Grapes", numdata: 120, image: "assets/images/avocado01.jpg"),

    // {
    //   'productname': 'kiwi',
    //   'image': "assets/images/kiwis01.jpg",
    //   'price': 250
    // },
    // {
    //   'productname': 'apple',
    //   'image': "assets/images/apple00.jpg",
    //   'price': 250
    // },
    // {
    //   'productname': 'orange',
    //   'image': "assets/images/orange01.jpg",
    //   'price': 210
    // },
    // {
    //   'productname': 'banana',
    //   'image': "assets/images/banana01.jpg",
    //   'price': 250
    // },
    // {
    //   'productname': 'cheery',
    //   'image': "assets/images/cheery01.jpg",
    //   'price': 200
    // },
    // {
    //   'productname': 'Avocados',
    //   'image': "assets/images/avocado01.jpg",
    //   'price': 190
    // },
    // {
    //   'productname': 'grapes',
    //   'image': "assets/images/grapes.jpg",
    //   'price': 300
    // },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Product"),
          backgroundColor: Colors.green,
        ),
        // body: ListView.builder(itemCount: Data.length,itemBuilder: (context, index) {
        //   return Card(
        //     child: ListTile(
        //       leading: Image.asset(Data[index].image!),
        //       title: Text(Data[index].name!),
        //       subtitle: Text('${Data[index].numdata!}'),
        //       trailing: Icon(Icons.favorite_border),
        //     )
        //   );
        // }),
        body: ListView(
          children: Data.map((Data) => Padding(
            padding: const EdgeInsets.all(15.0),
            child: Card(
                  child: Column(children: [
                    SizedBox(height: 200,child: Image.asset(Data.image!)),
                    Text(Data.name!),
                    Text('${Data.numdata!}')
                  ],),
                ),
          )).toList()
        ));
  }
}
