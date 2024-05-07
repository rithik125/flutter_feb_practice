import 'package:flutter/material.dart';
import 'package:flutter_feb_practice/model/shoes.dart';
import 'package:flutter_feb_practice/screens/utils/shoes_app_utilss.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
void main(){
  runApp(MaterialApp(home: All_shoes(),));
}
class All_shoes extends StatelessWidget {
 var Shoe =[
   shoes(image: "https://static.nike.com/a/images/t_PDP_1280_v1/f_auto,q_auto:eco/99486859-0ff3-46b4-949b-2d16af2ad421/custom-nike-dunk-high-by-you-shoes.png",name: "Nike Dunk High By You",catagari: "Nike",price: "\₹14 195.00" ),
   shoes(image: "https://www.tobys.com/cdn/shop/files/HQ3790.1.jpg?v=1694412927",name: "adidas Men's Running Shoes",catagari: "adidas",price: "\$40.57" ),
   shoes(image: "https://media.cnn.com/api/v1/images/stellar/prod/adidas-women-s-nmd-r1-shoes-product-card-cnnu.jpg?c=16x9&q=h_270,w_480,c_fill/f_webp",name: "Adidas NMD R1",catagari: "adidas",price: "\$100" ),
   shoes(image: "https://media.cnn.com/api/v1/images/stellar/prod/210902101816-sneakers-brooks-glycerin-19.jpg?q=x_0,y_0,h_956,w_1700,c_fill/h_270,w_480/f_webp",name: "Brooks Glycerin 19",catagari: "BROOKS",price: "\$40" ),

 ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GridView.custom(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2), childrenDelegate: SliverChildBuilderDelegate((context, index) => Card(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
            child: Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(child: Image.network(Shoe[index].image!,height: 20,)),
                Text(Shoe[index].name!,style: MyTextStyle.subHeading,),
                Text(Shoe[index].catagari!,style: MyTextStyle.subHeading,),
                Text(Shoe[index].price!),


              ],
            ),
          ),
        ),
      ),childCount: Shoe.length)),

    );
  }
}
