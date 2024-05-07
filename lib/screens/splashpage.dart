import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class SplasgPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      body: Center(
       // child:
        //Image(image: AssetImage("assets/icons/ic_launcher.png")),
        // Image(image: NetworkImage("https://cdn1.iconfinder.com/data/icons/metaversy-metaverse-3d-object/512/2._Metaverse_Dimension.png"))
      child: Lottie.asset("assets/animations/applotti.json"),
      ),
      // body: Center(
      //   child: Icon(Icons.water_damage_outlined,
      //   size: 130,
      //   color: Colors.red,),
      // ),
    );
  }
}
