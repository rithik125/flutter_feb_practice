import 'package:flutter/material.dart';
import 'package:flutter_feb_practice/statemanagent/usingprovider/model/count.dart';

class CounterProvider extends ChangeNotifier {
  Count _inCount = Count(0,);



  Count get counter => _inCount;
  void incrementCounter(){
   _inCount.value++;
   notifyListeners();
  }
  // void decrementCount(){
  //
  // }




}

