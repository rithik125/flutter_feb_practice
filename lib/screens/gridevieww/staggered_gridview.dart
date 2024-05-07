import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

void main() {
  runApp(MaterialApp(
    home: Staggered_gridview01(),
  ));
}

class Staggered_gridview01 extends StatelessWidget {
  const Staggered_gridview01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Staggered_gridview"),
      ),
      body: SingleChildScrollView(
        child: StaggeredGrid.count(
          crossAxisCount: 4,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          children: [
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 3,
                child: Card(color: Colors.blueGrey,
                  child: Icon(
                    Icons.h_mobiledata,
                    size: 20,
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 2,
                mainAxisCellCount: 4,
                child: Card(color: Colors.lime[900],
                  child: Icon(
                    Icons.wallet,
                    size: 20,
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 1,
                mainAxisCellCount: 2,
                child: Card(color: Colors.red,
                  child: Icon(
                    Icons.holiday_village,
                    size: 20,
                  ),
                )),
            StaggeredGridTile.count(
                crossAxisCellCount: 3,
                mainAxisCellCount: 4,
                child: Card(color: Colors.yellow,
                  child: Icon(
                    Icons.key,
                    size: 20,
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
