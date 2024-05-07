import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
void main(){
  runApp(MaterialApp(home: Bottem_sheet(),));
}

class Bottem_sheet extends StatelessWidget {
  const Bottem_sheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        child: Center(
          child: Image.asset("assets/images/apple00.jpg",height: 100,width: 100,),
        ), onLongPress: () => showsheet(context),),
    );
  }

  showsheet(BuildContext context) {
    showModalBottomSheet(context: context,
        builder: (context) => Column(
          children: [
            ListTile(
              leading: FaIcon(FontAwesomeIcons.facebook,color: Colors.blue,),
              title: Text("Facebook"),
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.instagram,color: Colors.blue,),
              title: Text("instagram"),
            ),
            ListTile(
              leading: FaIcon(FontAwesomeIcons.whatsapp,color: Colors.blue,),
              title: Text("WhatsApp"),
            )
          ],
        ));
  }
}
