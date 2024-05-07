import 'package:flutter/material.dart';

class TabBar_shoes extends StatelessWidget {
  const TabBar_shoes({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 4,
        child: Scaffold(
          appBar: AppBar(
            title: Center(child: Text("All shoes")),
            actions: [
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.search,
                    color: Colors.black,
                  ))
            ],
            bottom: TabBar(tabs: [
              Text("All"),
              Text("Lifestyle"),
              Text("jordan"),
              Text("Running")
            ]
            ),
          ),
          body: TabBarView(children: [

          ]),
        )
    );
  }
}
