import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: Hero_Animation(),));
}

class Hero_Animation extends StatelessWidget {
  const Hero_Animation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero Main"),
      ),
      body: InkWell(
          onTap: () => Navigator.push(
              context, MaterialPageRoute(builder: (context) => HeroPage())),
          child: Hero(
            tag: "Heroanime",
            child: Container(height: 100,width: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: AssetImage("assets/images/Tajmahal.jpg"))),
            ),
          )),
    );
  }
}

class HeroPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hero_main_page"),
      ),
      body: Center(
        child: InkWell(
            onTap: () => Navigator.push(
                context, MaterialPageRoute(builder: (context) => Hero_Animation())),
            child: Hero(
              tag:"Heroanime",
              child: Container(height: 400,width: 400,
                decoration: BoxDecoration(
                    image: DecorationImage(
                        fit: BoxFit.cover, image: AssetImage("assets/images/Tajmahal.jpg"))),
              ),
            )),
      ),
    );
  }
}
