import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feb_practice/screens/ListViewww/home_page.dart';
import 'package:flutter_feb_practice/screens/registration.dart';
import 'package:flutter_feb_practice/screens/utils/colors.dart';
import 'package:flutter_feb_practice/screens/utils/consten_shackbar.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String username = "ambro";

  String password = "123456";

  TextEditingController usernamecontroller = TextEditingController();

  TextEditingController passwordcontroller = TextEditingController();

void dispose(){
  usernamecontroller.dispose();
  passwordcontroller.dispose();
  super.dispose();
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: SafeArea(
              child: SingleChildScrollView(
                physics: NeverScrollableScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      "Login Page",
                      //style: MyTextStyle.bodyTextStyel,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 30,
                          color: MyColors.textColors),
                    ),
                    Text(
                      "Login To Your Account",
                      style: GoogleFonts.sahitya(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.lightGreen),
                    ),
                    TextFormField(
                      controller: usernamecontroller,
                      decoration: InputDecoration(
                          prefixIcon: (Icon(Icons.person)),
                          labelText: "Email",
                          hintText: "Enter Your Email",
                          border: OutlineInputBorder()),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      obscureText: true,
                      obscuringCharacter: '*',
                      controller: passwordcontroller,
                      validator: (pwd) {
                        if (pwd!.isEmpty || pwd.length < 6) {
                          return 'password is empty / it must contain 6 letter';
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.lock),
                          // suffixIcon: IconButton(onPressed: (){}, icon: , ),
                          labelText: "password",
                          hintText: "Enter your password",
                          helperText:
                              "password must contain upper and lowercase letters",
                          border: OutlineInputBorder()),
                    ),
                    SizedBox(height: 10,),
                    MaterialButton(
                      onPressed: () {
                        if (username == usernamecontroller.text &&
                            password == passwordcontroller.text) {
                          SuccesssSnakebar(context);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Home_Page01()));

                        } else {
                          errorSnaclbar(context);
                        }
                        usernamecontroller.clear();
                        passwordcontroller.clear();
                      },
                      color: Colors.green,
                      minWidth: 130,
                      shape: StadiumBorder(),
                      child: Text("Login"),
                    ),
                    SizedBox(height: 9,),
                    // ElevatedButton(
                    //     style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
                    //     onPressed: () {},
                    //     child: Text("Login")),
                    RichText(
                        text: TextSpan(
                            text: "Note a User",
                            style: TextStyle(color: Colors.black),
                            children: [
                          TextSpan(
                              text: "Register",
                              recognizer: TapGestureRecognizer()
                                ..onTap = () => {
                                      Navigator.pushReplacement(
                                          context,
                                          (MaterialPageRoute(
                                              builder: (context) =>
                                                  Registration_page())))
                                    },
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.green))
                        ])),
                  ],
                ),
              ),
            ),
          )),
          //Adding space at the bottom (20 of screen height)
          //SizedBox(height: MediaQuery.of(context).size.height * 0.2,)
          Align(
            alignment: Alignment.bottomCenter,
            child: Image.asset(
              "assets/images/NicePng_christmas-tree-png_299793.png",
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            ),
          )
        ],
      ),
    );
  }
}
