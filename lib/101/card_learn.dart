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
              color:Colors.orange,
              shape: StadiumBorder(),
              child: SizedBox(height: 100, width: 250, child:Center(child: Text('data1')))
            ),
            Card(
              margin: ProjectMargins.cardMargin,
              color:Colors.red,
              child: SizedBox(height: 100, width: 100, child:Center(child: Text('data2'))),
            ),
            _CustomCards(child: SizedBox(height: 100, width: 300,child:Center(child: Text('data3'))))
          ],
        ),
      
    );
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10.0);
  static const stadiumBorder = StadiumBorder();
}

// ignore: unused_element
class _CustomCards extends StatelessWidget {
  
  

  const _CustomCards({required this.child});
  final Widget child ;
  final stadiumBorder = const StadiumBorder();
  @override
  Widget build(BuildContext context) {
   
    return  Card(
              margin: ProjectMargins.cardMargin,
              color:Colors.yellow,
              shape: stadiumBorder,
              child:child,
               );
  }
}



//bordors
// stadiumborder () , circuleborder(),roundedrectangularborder()