import 'package:flutter/material.dart';

errorSnaclbar(context){
 return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(backgroundColor: Colors.red,content: Text("Login Failed")));
}
SuccesssSnakebar(context){
  return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(backgroundColor: Colors.green,content: Text("Success")));
}
warring(context){
  return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(backgroundColor: Colors.red,content: Text("Warring")));
}