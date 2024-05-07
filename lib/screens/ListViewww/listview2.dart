import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feb_practice/model/product_model.dart';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false,
    home: ListView_separa(),
  ));
}

class ListView_separa extends StatelessWidget {
  var data = [
    Product(name: "Orange", image: "assets/images/orange01.jpg",strindata: 'Orange is vitamin c rich fruit',doubledata: 30),
    Product(name: "Orange", image: "assets/images/orange01.jpg",strindata: 'Orange is vitamin c rich fruit',doubledata: 30),
    Product(name: "Orange", image: "assets/images/orange01.jpg",strindata: 'Orange is vitamin c rich fruit',doubledata: 30),
    Product(name: "Orange", image: "assets/images/orange01.jpg",strindata: 'Orange is vitamin c rich fruit',doubledata: 30),
    Product(name: "Orange",  image: "assets/images/orange01.jpg",strindata: 'Orange is vitamin c rich fruit',doubledata: 30),
    Product(name: "Orange", image: "assets/images/orange01.jpg",strindata: 'Orange is vitamin c rich fruit',doubledata: 30),
    Product(name: "Orange",  image: "assets/images/orange01.jpg",strindata: 'Orange is vitamin c rich fruit',doubledata: 30),
    Product(name: "Orange", image: "assets/images/orange01.jpg",strindata: 'Orange is vitamin c rich fruit',doubledata: 30),
    Product(name: "Orange", image: "assets/images/orange01.jpg",strindata: 'Orange is vitamin c rich fruit',doubledata: 30),
    Product(name: "Orange", image: "assets/images/orange01.jpg",strindata: 'Orange is vitamin c rich fruit',doubledata: 30),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Text("ListView 3"),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CircleAvatar(child: Icon(Icons.add),backgroundColor: Colors.green,),
          ),
          PopupMenuButton(itemBuilder: (context){
            return [PopupMenuItem(child: Text("Setting")),
            PopupMenuItem(child: TextButton(onPressed: (){}, child: Text("Privacy Policy")))];
          })
        ],
        
      ),
      body: ListView.separated(
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(12.0),
              child: Container(
                height: 200,
                decoration: BoxDecoration(image:DecorationImage(fit: BoxFit.cover,image:NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRnhT7Z5gS06hR-VffgGxynAigq45j41MWtbMm2wl2uhg&s") ) ,
                  // color: Colors.primaries[Random().nextInt(Colors.primaries.length)],
                  borderRadius: BorderRadius.only(
                      topRight: Radius.circular(50),
                      bottomLeft: Radius.circular(50)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset(
                      '${data[index].image}',
                      fit: BoxFit.fitHeight,
                      height: 100,
                      width: 100,
                    ),
                    Column(mainAxisAlignment:MainAxisAlignment.spaceBetween,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text('${data[index].name}',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                        Text(data[index].strindata!),
                        Text('\$${data[index].doubledata}')
                      ],
                    ),
                    Icon(Icons.shopping_cart,size: 20,)
                  ],
                ),
              ),
            );
          },
          separatorBuilder: (context, index) {
            if (index % 4 == 0) {
              return Text("froutes",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.green),);
            } else {
              return Container();
            }
          },
          itemCount: data.length),
    );
  }
}
