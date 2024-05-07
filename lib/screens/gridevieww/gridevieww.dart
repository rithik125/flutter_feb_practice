import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Gride_vieww(),));
}

class Gride_vieww extends StatelessWidget {
  const Gride_vieww({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("shoe"),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,childAspectRatio: .8 ),
        children: List.generate(
            10,
            (index) => Card(
                  child: Column(
                    children: [
                      Image.network(
                          "https://contents.mediadecathlon.com/p2393841/97ec4616ea32d8eaa67ee3c30d2eafd2/p2393841.jpg?format=auto&quality=70&f=650x0"),Text("\$200")
                    ,Text("Puma")],
                  ),
                )),
      ),
    );
  }
}
