import 'package:flutter/material.dart';

class PaddingLearn extends StatelessWidget {
  const PaddingLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(),
      body:Padding(
        padding:  ProjectPadding.pagePaddingVertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(color: Colors.red,height: 100,),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical:50 ,horizontal: 40,),
              child: Container(color: Colors.red,height: 100,),
            ),
      
             Padding(
              padding: const EdgeInsets.only(right: 20) + const EdgeInsets.symmetric(vertical:10),
              child: const Text("data"),
            )
          ],
        ),
      )
    );
  }
}




class ProjectPadding {
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical:10); 
}