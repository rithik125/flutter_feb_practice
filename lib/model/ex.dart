// import 'package:flutter/material.dart';
// import 'drawer_ex.dart';
// void main(){
//   runApp(MaterialApp(home: ex(),));
// }
//
// class ex extends StatelessWidget {
//   var Drawerexx = [
//     Drawer_x2(icon: "https://cdn4.iconfinder.com/data/icons/web-essentials-6/24/edit-512.png",nameoficon: "Add Leads"),
//     Drawer_x2(icon: "https://cdn4.iconfinder.com/data/icons/web-essentials-6/24/edit-512.png",nameoficon: "Add Leads"),
//     Drawer_x2(icon: "https://cdn4.iconfinder.com/data/icons/web-essentials-6/24/edit-512.png",nameoficon: "Add Leads"),
//     Drawer_x2(icon: "https://cdn4.iconfinder.com/data/icons/web-essentials-6/24/edit-512.png",nameoficon: "Add Leads"),
//     Drawer_x2(icon: "https://cdn4.iconfinder.com/data/icons/web-essentials-6/24/edit-512.png",nameoficon: "Add Leads"),
//     Drawer_x2(icon: "https://cdn4.iconfinder.com/data/icons/web-essentials-6/24/edit-512.png",nameoficon: "Add Leads"),
//
//
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Column(
//         children: [
//           ListView.separated(
//               itemBuilder: (context, index) => Card(
//                 child: Row(
//                   children: [
//                     Image.network('${Drawerexx[index].icon}'),
//                     Text('${Drawerexx[index].nameoficon}')
//                   ],
//                 ),
//               ),
//               separatorBuilder: (context,index){
//                 if((index + 1) % 4 == 0){
//                   return Padding(
//                     padding: const EdgeInsets.all(18.0),
//                     child: Text("Fri, February 7",style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),),
//                   );
//                 }else{
//                   return Container();
//                 }
//               },
//               itemCount:Drawerexx.length),
//         ],
//       ),
//     );
//   }
// }
