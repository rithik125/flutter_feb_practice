import 'package:flutter/material.dart';
import 'package:flutter_feb_practice/statemanagent/usingprovider/controller/count_controller.dart';
import 'package:flutter_feb_practice/statemanagent/usingprovider/view/counterScreen.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(Provider());
}
class Provider extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
   return MaterialApp(
     home: ChangeNotifierProvider(create: (context)=>CounterProvider(),child: CounterScreen(),),
   );
  }

}