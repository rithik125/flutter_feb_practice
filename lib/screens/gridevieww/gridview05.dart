import 'package:flutter/material.dart';
import 'package:flutter_feb_practice/model/product_model.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(MaterialApp(
    home: Gridview05(),
  ));
}

class Gridview05 extends StatelessWidget {
  var data = [
    Product(
        image:
            "https://rukminim2.flixcart.com/image/850/1000/l0igvww0/mobile/2/g/r/-original-imagca5kqvhuscnv.jpeg?q=90&crop=false",
        name: "Iphone 13 pro",
        strindata: "mobile",
    off: "20% OFF",offamt: "\$1299",amt: "\$999"),
    Product(
        image:
            "https://rukminim2.flixcart.com/image/850/1000/k9loccw0/mobile/6/8/g/apple-iphone-se-mxvv2hn-a-original-imafrcqmzzajg3zg.jpeg?q=20&crop=false",
        name: "Iphone SE",
        strindata: "mobile",
            off: "15% OFF",offamt: "\$1300",amt: "\$990"  ),
    Product(
        image:
            "https://m.media-amazon.com/images/I/71GIYSZpW+L._AC_UF1000,1000_QL80_.jpg",
        name: "Apple watch Series 7",
        strindata: "watch",off: "25% OFF",offamt: "\$1400",amt: "909"),
    Product(
        image:
            "https://rukminim2.flixcart.com/image/850/1000/l0igvww0/mobile/2/g/r/-original-imagca5kqvhuscnv.jpeg?q=90&crop=false",
        name: "Iphone 13 pro",
        strindata: "mobile",off: "10% OFF",offamt: "\$2000",amt: "1990")
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lime[900],
        leading: Icon(Icons.menu),
        title: Text(
          "Catalog App ",
          style: GoogleFonts.babylonica(fontSize: 20),
        ),
      ),
      body: GridView.custom(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, ),
          childrenDelegate: SliverChildBuilderDelegate(
              (context, index) => Expanded(
                child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Expanded(
                                child: Image.network(data[index].image!,
                                    fit: BoxFit.fill)),
                            Text(
                              data[index].name!,
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Text(data[index].strindata!),
                            Row(mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                RichText(
                                    text: TextSpan(
                                        text: "${data[index].offamt}",
                                        style: TextStyle(
                                            decoration: TextDecoration.lineThrough,
                                            color: Colors.grey),

                                    )),
                               RichText(text:
                               TextSpan(
                               text: "${data[index].amt}"
                                   ,
                                   style: TextStyle(
                                       color: Colors.greenAccent,
                                       fontWeight: FontWeight.bold
                                   )
                               ),

                              ),
                                SizedBox(width: 5,),
                                Text("${data[index].off}",style: TextStyle(color: Colors.orange),)
                              ],
                            ),
                           MaterialButton(height: 50,color: Colors.green[900],onPressed: (){},child: Row(mainAxisAlignment: MainAxisAlignment.center,children: [Icon(Icons.shopping_cart),Text("Add To Cart")],),)


                          ],
                        ),
                      ),
                    ),
              ),
              childCount: data.length)),
    );
  }
}
