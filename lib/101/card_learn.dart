import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(),
      body:   
        
        const Column(
          children: [
            Card(
              margin: ProjectMargins.cardMargin,
              color:Colors.yellow,
              shape: StadiumBorder(),
              child: SizedBox(height: 100, width: 300)
            ),
            Card(
              margin: ProjectMargins.cardMargin,
              color:Colors.red,
              child: SizedBox(height: 100, width: 100),
            ),
          ],
        ),
      
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10.0);
}



//bordors
// stadiumborder () , circuleborder(),roundedrectangularborder()