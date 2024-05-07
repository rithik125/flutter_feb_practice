import 'package:flutter/material.dart';
import 'package:flutter_feb_practice/model/class_work_ex.dart';


class ShoeDetails extends StatelessWidget {
late classWork shoe;

  @override
  Widget build(BuildContext context) {
    final index = ModalRoute.of(context)?.settings.arguments as int;
    shoe = sholist[index];
    return Scaffold(
      appBar: AppBar(title: Text('${shoe.name} Details'),),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(child: Image.network(shoe.image?? "")),
            ),
            Text(shoe.name?? "",),
            Text(shoe.deic?? "",)
          ],
        ),
      ),
    );
  }
}
