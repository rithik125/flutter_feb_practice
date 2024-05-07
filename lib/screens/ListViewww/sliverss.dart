import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Sliverr_page(),
  ));
}

class Sliverr_page extends StatefulWidget {
  const Sliverr_page({super.key});

  @override
  State<Sliverr_page> createState() => _Sliverr_pageState();
}

class _Sliverr_pageState extends State<Sliverr_page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: CustomScrollView(
        slivers: [
          SliverAppBar(
            floating: true,
            pinned: true,
            title: Text("My Product"),
            bottom: AppBar(
              title: Container(
                width: double.infinity,
                height: 60,
                child: TextField(
                  decoration: InputDecoration(
                      hintText: "Search Here ",
                      prefixIcon: Icon(Icons.search),
                      suffixIcon: Icon(Icons.camera_alt)),
                ),
              ),
            ),
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate(
                  childCount: 10,
                  (context, index) => Card(
                        child: Text("data $index"),
                      ))),
          SliverToBoxAdapter(
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(onPressed: (){}, child: Text("frutes")),
                ElevatedButton(onPressed: (){}, child: Text("vegitabil")),
                ElevatedButton(onPressed: (){}, child: Text("salada"))
              ],
            )
          ),
          SliverGrid(
              delegate: SliverChildBuilderDelegate((context, index) => Card(
                    color: Colors.black,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Image.asset(
                          "assets/images/avocado01.jpg",
                          width: 400,
                          height: 200,
                        ),
                        Text('\$ 200')
                      ],
                    ),
                  )),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  crossAxisSpacing: 20,
                  mainAxisSpacing: 20))
        ],
      )),
    );
  }
}
