import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_feb_practice/screens/loginpage.dart';
import 'package:google_fonts/google_fonts.dart';
// to set background image or colour or gradient for a screen

class Splash_page_with_image extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 1), () {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
    });
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomCenter,
              end: Alignment.topRight,
              colors: [
                Colors.black87,
                Colors.blue,
                Colors.white])
          // image: DecorationImage(
          //     fit: BoxFit.fill,
          //     image: NetworkImage(
          //         "https://plus.unsplash.com/premium_photo-1661277738780-34bfa7383ec5?w=1000&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MXx8d2FsbHBhcGVyfGVufDB8fDB8fHww"))
          ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(
                height: 50,
                width: 50,
                image: AssetImage("assets/icons/ic_launcher.png")),
            Text(
              "MOON",
              style: GoogleFonts.cambo(fontSize: 20, color: Colors.white),
            )
          ],
        ),
      ),
    ));
  }
}
