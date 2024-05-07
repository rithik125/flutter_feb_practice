import 'package:flutter/material.dart';

class AlertDialog_box extends StatefulWidget {
  const AlertDialog_box({super.key});

  @override
  State<AlertDialog_box> createState() => _AlertDialog_boxState();
}

class _AlertDialog_boxState extends State<AlertDialog_box> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
      Center(
        child: ElevatedButton(onPressed: (){
          return showAlert(context);
        }, child: Text("Show Alert")),
      ),
    );
  }

   showAlert(BuildContext context) {
    showDialog(context: context, builder: (context){
      return AlertDialog(backgroundColor: Colors.red,);
    });
   }


}
