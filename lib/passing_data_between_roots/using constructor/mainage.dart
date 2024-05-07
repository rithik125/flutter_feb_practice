import 'package:flutter/material.dart';
import 'package:flutter_feb_practice/passing_data_between_roots/using%20constructor/statefullScreen.dart';
import 'package:flutter_feb_practice/passing_data_between_roots/using%20constructor/statelessScreen.dart';

void main(){
  runApp(MaterialApp(home: MainPage(),));
}
class MainPage extends StatelessWidget {
  String name = "Tiger";
  String image =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSnNd56Zx3LVKEbvDv6Agm9h4ZgjGVQ-MbkOEtuK4KliA&s";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StlessScreeen(name:name,image:image)));
              },
              child: Text("To State less page"),
            ),
            SizedBox(
              height: 20,
            ),
            MaterialButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => StateFullls(name:name,image: image)));
              },
              child: Text("To State full page"),
            )
          ],
        ),
      ),
    );
  }
}

