import 'package:flutter/material.dart';
void main(){
  runApp(MaterialApp(home: page_view_builderrrr(),));
}

class page_view_builderrrr extends StatefulWidget {
  const page_view_builderrrr({super.key});

  @override
  State<page_view_builderrrr> createState() => _page_view_builderrrrState();
}

class _page_view_builderrrrState extends State<page_view_builderrrr> {
  PageController controller = PageController();
  int currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(child: PageView.builder(controller: controller,itemCount: 5,itemBuilder: (context,index){
            return returnWidget(index);
          },onPageChanged: (index){
            setState(() {
              currentPage = index;
            });
          },)),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: (){
                if(currentPage > 0){
                  controller.previousPage(duration: Duration(milliseconds: 800), curve: Curves.easeInCirc);
                }
              }, child: Text("previous")),
              SizedBox(width: 20,),
              ElevatedButton(onPressed: (){
                if(currentPage < 4){
                  controller.nextPage(duration: Duration(milliseconds: 800), curve: Curves.easeInCirc);
                }
              }, child: Text("Next"))
            ],
          )

        ],
      ),
    );
  }

  returnWidget(int index) {
    return Container(color: Colors.orange,
      child:
      Center(child: Text("Page Index = $index",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 50),),),
    );
  }
}
