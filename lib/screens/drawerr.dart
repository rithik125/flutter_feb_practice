import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: drawerr(),));
}

class drawerr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DrawerEx"),
      ),
      drawer: Theme(data: Theme.of(context).copyWith(canvasColor: Colors.transparent),
        child: Drawer(
          child: ListView(
            children: [
              UserAccountsDrawerHeader(decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
                  Colors.black54,
                  Colors.pink,
                  Colors.white,
                ])
              ),
                accountName: Text("Rithik"),
                accountEmail: Text("rithikvr135@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage("https://t3.ftcdn.net/jpg/02/43/12/34/360_F_243123463_zTooub557xEWABDLk0jJklDyLSGl2jrr.jpg")
                ),otherAccountsPictures: [
                  CircleAvatar(backgroundImage: NetworkImage("https://t3.ftcdn.net/jpg/02/99/04/20/360_F_299042079_vGBD7wIlSeNl7vOevWHiL93G4koMM967.jpg"),),
                CircleAvatar(backgroundImage: NetworkImage("https://t4.ftcdn.net/jpg/03/83/25/83/360_F_383258331_D8imaEMl8Q3lf7EKU2Pi78Cn0R7KkW9o.jpg"),)

              ],
              ),
             listTile()
            ],
          ),
        ),
      ),
    );
  }

 Widget listTile() {
    return Column(children: 
      List.generate(6, (index) => ListTile(
        leading: Icon(Icons.home),
        title: Text("Data"),
      ))
   ,);
 }
}
