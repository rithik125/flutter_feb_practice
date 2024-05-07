import 'package:flutter/material.dart';
import 'package:flutter_feb_practice/screens/utils/shoes_app_utilss.dart';
import 'package:flutter_feb_practice/shoes_example_ui/all_screen.dart';

void main(){
  runApp(MaterialApp(debugShowCheckedModeBanner: false,home: TabBar_shoess(),));
}

class TabBar_shoess extends StatelessWidget {
  const TabBar_shoess({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            actions: [Padding(
              padding: const EdgeInsets.all(18.0),
              child: IconButton(onPressed: () {}, icon: Icon(Icons.search)),
            )],
            title: Center(child: Text("All Shoes",style: MyTextStyle.topHeading,)),
            bottom: TabBar(tabs: [
              TextButton(onPressed: (){}, child: Text("All ",style: MyTextStyle.textHeading,)),
              TextButton(onPressed: (){}, child: Text("Lifestyle",style: MyTextStyle.textHeading,)),
              TextButton(onPressed: (){}, child: Text("Jordan",style: MyTextStyle.textHeading,)),
              TextButton(onPressed: (){}, child: Text("Running",style: MyTextStyle.textHeading,)),
            ]),
          ),
          body: TabBarView(children: [
            All_shoes(),
            All_shoes(),
            All_shoes(),
            All_shoes(),
          ]),
        ));
  }
}
