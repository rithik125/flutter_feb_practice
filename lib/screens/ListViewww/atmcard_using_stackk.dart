import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:math' as math;

void main() {
  runApp(MaterialApp(
    home: ATMCard(),
  ));
}

class ATMCard extends StatelessWidget {
  const ATMCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 300,
              width: 500,
              decoration: BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(20))
                  ,image: DecorationImage(
                      image: NetworkImage(
                          "https://i2.wp.com/files.123freevectors.com/wp-content/original/133615-modern-abstract-cool-blue-background.jpg?w=500&q=95"),fit: BoxFit.fill)),
            ),
            Positioned(left: 30,top: 30,child: Text('WORLD',style: TextStyle(color: Colors.white),)),
            Positioned(top: 30,
                right: 30,child:Transform.rotate(angle: math.pi/2, child:Icon(Icons.wifi,size: 35,color: Colors.white,))),
            Positioned(left: 30,top: 80,child: Icon(Icons.nfc,color: Colors.grey,size: 50,)),
            Positioned(
              left: 30,
              bottom: 20,
              child: Column(mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("1234 5682 7736 9876",style: GoogleFonts.caladea(fontSize: 30,color:Colors.white),),
                  Text('VALID THRU',style: GoogleFonts.caladea(fontSize: 15,color:Colors.white),),
                  Text('12/23',style: GoogleFonts.caladea(fontSize: 15,color:Colors.white),),
                  Text("ARUN KD",style: GoogleFonts.caladea(fontSize: 15,color:Colors.white),)
                ],
              ),
            ),
            Positioned(right: 10,bottom: 10,child: Image.asset("assets/icons/SBI-Logo.png",height: 80,width: 100,)),
            Positioned(right: 12,bottom: 8,child: Text("Classic",style: GoogleFonts.caladea(fontSize: 15,color:Colors.white))),
            Positioned(right: 220,bottom: 150,child: Text("Classic",style: GoogleFonts.caladea(fontSize: 40,color:Colors.white)))

          ],
        ),
      ),
    );
  }
}
