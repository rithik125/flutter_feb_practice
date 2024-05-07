import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: TabBarEx2(),));
}

class TabBarEx2 extends StatelessWidget {
  const TabBarEx2({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 6, child: 
    Scaffold(
      appBar: AppBar(
        title: Text("Calls"),
        bottom: TabBar(tabs: [
          Row(children: [
            Column(
              children: [
                Icon(Icons.call),
                Text("RECENTS")
              ],
            ),
            Column(
              children: [
                Icon(Icons.call),
                Text("RECENTS")
              ],
            ),

          ],)
        ]),
      ),
    ));
  }
}
