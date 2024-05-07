
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feb_practice/model/drawer_ex.dart';
void main(){
  runApp(MaterialApp(home: Work_drawer_background_transparent(),));
}

class Work_drawer_background_transparent extends StatelessWidget {
  // var Drawerexx = [
  //   Drawer_x2(icon: "https://cdn4.iconfinder.com/data/icons/web-essentials-6/24/edit-512.png",nameoficon: "Add Leads"),
  //   Drawer_x2(icon: "https://cdn4.iconfinder.com/data/icons/web-essentials-6/24/edit-512.png",nameoficon: "Add Leads"),
  //   Drawer_x2(icon: "https://cdn4.iconfinder.com/data/icons/web-essentials-6/24/edit-512.png",nameoficon: "Add Leads"),
  //   Drawer_x2(icon: "https://cdn4.iconfinder.com/data/icons/web-essentials-6/24/edit-512.png",nameoficon: "Add Leads"),
  //   Drawer_x2(icon: "https://cdn4.iconfinder.com/data/icons/web-essentials-6/24/edit-512.png",nameoficon: "Add Leads"),
  //   Drawer_x2(icon: "https://cdn4.iconfinder.com/data/icons/web-essentials-6/24/edit-512.png",nameoficon: "Add Leads"),
  //
  //
  // ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("transparent"),
      ),
      drawer: Drawer(backgroundColor: Colors.transparent,
        child: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CircleAvatar(radius: 40,
                backgroundImage: NetworkImage(
                    "https://d38b044pevnwc9.cloudfront.net/cutout-nuxt/enhancer/3.jpg"),
              ),
            ),
            SizedBox(height: 10,),
            Column(
              children: [
                Text("Bongani Nkosi"),
                SizedBox(height: 10,),
                Text("nsduhgjbu@gmail.com"),
                SizedBox(height: 20,),
                MaterialButton(minWidth: 80,height: 40,onPressed: (){},child: Text("SIGN OUT"),shape: RoundedRectangleBorder(borderRadius:BorderRadius.all(Radius.circular(20))),)
              ],
            ),SizedBox(height: 20,),
            SingleChildScrollView(
              child: Column(mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(children: [
                      Image.network("https://cdn4.iconfinder.com/data/icons/web-essentials-6/24/edit-512.png",height: 20,),
                      SizedBox(width: 10,),
                      Text("Add Leads",)
                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(children: [
                      Image.network("https://cdn3.iconfinder.com/data/icons/feather-5/24/star-512.png",height: 20,),
                      SizedBox(width: 10,),
                      Text("Points Redemptions",)
                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(children: [
                      Text("+1",style: TextStyle(color: Colors.black,fontSize: 17,fontWeight: FontWeight.bold),),
                      SizedBox(width: 10,),
                      Text("Points",)
                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(children: [
                     Icon(Icons.person,),
                      SizedBox(width: 10,),
                      Text("Profile",)
                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(children: [
                      Icon(Icons.dashboard),
                      SizedBox(width: 10,),
                      Text("Dashboard",)
                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(children: [
                      Icon(Icons.home),
                      SizedBox(width: 10,),
                      Text("Home",)
                    ],),
                  ),
                  Divider(),
                  Text("Communicate"),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(children: [
                      Icon(Icons.lock),
                      SizedBox(width: 10,),
                      Text("Privacy Policy",)
                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(children: [
                      Icon(Icons.call),
                      SizedBox(width: 10,),
                      Text("Contact Us",)
                    ],),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(children: [
                      Icon(Icons.pages_outlined),
                      SizedBox(width: 10,),
                      Text("About App",)
                    ],),
                  ),


                ],
              ),
            )

          ],
        ),
      ),
    );
  }




}
