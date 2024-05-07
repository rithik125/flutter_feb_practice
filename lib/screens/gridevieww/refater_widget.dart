import 'package:flutter/material.dart';
import 'package:flutter_feb_practice/widgets/assen_xyzreader.dart';
import 'package:flutter_feb_practice/widgets/product_widget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(
    home: XYZreader(),
  ));
}

class XYZreader extends StatelessWidget {
  const XYZreader({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: Text("XYZreader"),
      ),
      body: SingleChildScrollView(
          child: StaggeredGrid.count(
        crossAxisCount: 4,
        mainAxisSpacing: 8,
        crossAxisSpacing: 8,
        children: [
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 4,
              child: Xyzreader_widgt(
                image:
                    "https://images.unsplash.com/photo-1523906834658-6e24ef2386f9?q=80&w=983&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                title: "Mysteries of the uni",
                date: "20 jun 2013",
                placename: "Tajmahal",
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 2,
              child: Xyzreader_widgt(
                image: "assets/images/Tajmahal.jpg",
                title: "Rialto Bridge, venice",
                date: "April 17,2018",
                placename: "Rialto Bridge,italy",
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 4,
              child: Xyzreader_widgt(
                image:
                    "https://images.unsplash.com/photo-1471306224500-6d0d218be372?q=80&w=987&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                title: "Budapest during daytime",
                date: "february 11,2019",
                placename: "Budapest, Hongrie",
              )),
          StaggeredGridTile.count(
              crossAxisCellCount: 2,
              mainAxisCellCount: 3,
              child: Xyzreader_widgt(
                image:
                    "https://images.unsplash.com/photo-1469474968028-56623f02e42e?q=80&w=874&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                title: "Alone in the unspoilt Wilderness",
                date: "july 26,2016",
                placename: "Ciucas peak ,Romania",
              ))
        ],
      )),
    );
  }
}
