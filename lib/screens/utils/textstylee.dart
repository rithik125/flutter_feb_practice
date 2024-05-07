import 'package:flutter/material.dart';
import 'package:flutter_feb_practice/screens/utils/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextStyle{
  static TextStyle textHeading = GoogleFonts.cabin(
    fontSize: 35,
    fontWeight: FontWeight.bold,
    color: MyColors.textColors

  );
  static TextStyle bodyTextStyel = TextStyle(
    fontSize: 40,
    color: Colors.green,
      fontStyle : FontStyle.italic
  );
}
