import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(MaterialApp(
    home: Bottem_sheet_classWork(),
  ));
}

class Bottem_sheet_classWork extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GestureDetector(
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Align(
                alignment: Alignment.topCenter,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 200,
                    height: 30,
                    child: Center(child: Text("Select the category")),
                    color: Colors.blue,
                  ),
                )
            ),
            SizedBox(
              height: 10,
            ),
            MaterialButton(
              color: Colors.blue,
              onPressed: () {},
              child: Text("Help"),
            ),
          ],
        ),
      ),
      onTap: () => Selectter(context),
    ));
  }

  Selectter(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (context) => Container(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.spaceBetween,              children: [
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(mainAxisSize: MainAxisSize.max,mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(children: [
                          Image(width: 45,height: 45,image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/d/d6/Files_App_icon_iOS.png")),
                          Text("Shopping"),
                        ]),
                        Column(children: [
                          Image(width: 45,height: 45,image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/d/d6/Files_App_icon_iOS.png")),
                          Text("Education"),
                        ]),
                        Column(
                          children: [
                            Image(width: 45,height: 45,image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/d/d6/Files_App_icon_iOS.png")),
                            Text("Personal")
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(children: [
                          Image(width: 45,height: 45,image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/d/d6/Files_App_icon_iOS.png")),
                          Text("Office"),
                        ]),
                        Column(children: [
                          Image(width: 45,height: 45,image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/d/d6/Files_App_icon_iOS.png")),
                          Text("Part time"),
                        ]),
                        Column(
                          children: [
                            Image(width: 45,height: 45,image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/d/d6/Files_App_icon_iOS.png")),
                            Text("Other")
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(children: [
                          Image(width: 45,height: 45,image: NetworkImage("https://upload.wikimedia.org/wikipedia/commons/d/d6/Files_App_icon_iOS.png")),
                          Text("New"),
                        ]),
                        
                      ],
                    ),
                  )
                                ],
                              ),
                )));
  }
}
