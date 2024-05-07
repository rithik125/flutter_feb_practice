import 'package:flutter/material.dart';
import 'package:flutter_feb_practice/statemanagent/usingprovider/controller/count_controller.dart';
import 'package:provider/provider.dart';


class CounterScreen extends StatelessWidget {
  const CounterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    dynamic counterCountroller = Provider.of<CounterProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Counter Provider Example"),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("you Have Pushed the button thi may time"),
            SizedBox(height: 20,),
            Text("${counterCountroller.counter.value}")
          ],),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        counterCountroller.incrementCounter();
      },child: Icon(Icons.add),),
    );
  }
}
