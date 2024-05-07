import 'package:flutter/material.dart';
import 'package:flutter_feb_practice/screens/ListViewww/home_page.dart';
import 'package:flutter_feb_practice/screens/gridevieww/grideview04.dart';
import 'package:flutter_feb_practice/screens/gridevieww/gridevieww.dart';
import 'package:flutter_feb_practice/screens/gridevieww/gridview05.dart';
void main(){
  runApp(MaterialApp(home: TabEx(),));
}

class TabEx extends StatelessWidget {
  const TabEx({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(length: 4,
        child: Scaffold(
       appBar: AppBar(backgroundColor: Colors.greenAccent,
         actions: [
           IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,color: Colors.white,)),
           IconButton(onPressed: (){}, icon: Icon(Icons.search,color: Colors.white,)),
           PopupMenuButton(itemBuilder: (context)=>[PopupMenuItem(child: Text("Settings"))])
         ],
         title: Text("WhatsApp"),
         bottom: TabBar(isScrollable: true,tabs: [
           Icon(Icons.people_alt_outlined,color: Colors.white,),
           Text("chat",style: TextStyle(color: Colors.white)),
           Text("Status",style: TextStyle(color: Colors.white)),
           Text("call",style: TextStyle(color: Colors.white)),

         ]),
       ),
          body: TabBarView(children: [
            Gride_vieww(),
           Home_Page01(),
            Gridview04(),
            Gridview05()
          ]),
        ));
  }
}
