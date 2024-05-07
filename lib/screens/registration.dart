import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_feb_practice/screens/loginpage.dart';
import 'package:flutter_feb_practice/screens/utils/consten_shackbar.dart';

class Registration_page extends StatefulWidget {
  @override
  State<Registration_page> createState() => _Registration_pageState();
}

class _Registration_pageState extends State<Registration_page> {
  TextEditingController passController = TextEditingController();

  var formKey = GlobalKey<FormState>();

  //to monitor the state of form and validate it
  var pwd_visibity = true;
  void dispose(){
    passController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: NeverScrollableScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Text(
                    "Registration",
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.green),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Create an account here",
                    style: TextStyle(color: Colors.black87, fontSize: 10),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: (Icon(Icons.person)),
                        labelText: "Name",
                        hintText: "Enter Your Username",
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    validator: (email) {
                      if (email!.isEmpty || !email.contains('@')) {
                        return "Enter must be a valid email ";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        prefixIcon: (Icon(Icons.email)),
                        labelText: "Email",
                        hintText: "Enter Your Email",
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    controller: passController,
                    obscureText: pwd_visibity,
                    obscuringCharacter: '*',
                    validator: (password) {
                      if (password!.isEmpty || password.length < 6) {
                        return "password is empty / it must contain 6 letter";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password_outlined),
                        suffixIcon: IconButton(
                            onPressed: () {
                              setState(() {
                                if (pwd_visibity == true) {
                                  pwd_visibity = false;
                                } else {
                                  pwd_visibity = true;
                                }
                              });
                            },
                            icon: Icon(pwd_visibity == true
                                ? Icons.visibility_off
                                : Icons.visibility)),
                        labelText: "password",
                        hintText: "Enter Your password",
                        helperText:
                            "Password must contain upper and lowercase letter",
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    obscureText: pwd_visibity,
                    obscuringCharacter: '*',
                    validator: (confirmPwd) {
                      if (confirmPwd!.isEmpty ||
                          confirmPwd != passController.text) {
                        return "Password mismatch";
                      } else {
                        return null;
                      }
                    },
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.password_outlined),
                        suffixIcon: IconButton(
                            onPressed: () {setState(() {
                              if(pwd_visibity == true){
                                pwd_visibity = false;
                              }else{
                                pwd_visibity = true;
                              }
                            });},
                            icon: Icon(pwd_visibity == true
                                ? Icons.visibility_off
                                : Icons.visibility)),
                        labelText: "Confirm Password",
                        hintText: "Enter Your Confirm Passwerd here",
                        helperText: "Confirm passwored must same as Password",
                        border: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  MaterialButton(
                    onPressed: () {
                      var valid = formKey.currentState!.validate();
                      if (valid == true) {
                        Navigator.push(
                            context,
                            (MaterialPageRoute(
                                builder: (context) => LoginPage())));
                      } else {
                       warring(context);
                      }
                    },
                    child: Text("register"),
                    color: Colors.green,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  RichText(
                      text: TextSpan(text: "Alredy have an account",style: TextStyle(color: Colors.black), children: [
                    TextSpan(
                        text: "Login",
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => LoginPage()));
                          },
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.green,
                            fontSize: 20))
                  ]))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
