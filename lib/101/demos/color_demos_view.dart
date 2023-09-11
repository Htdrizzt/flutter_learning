import 'package:flutter/material.dart';

class ColorDemosView extends StatefulWidget {
  const ColorDemosView({super.key});

  @override
  State<ColorDemosView> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ColorDemosView> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      bottomNavigationBar: BottomNavigationBar(items :  [
        BottomNavigationBarItem(icon: Container(color:Colors.red, width:10, height:20), label:'red'),
        BottomNavigationBarItem(icon: Container(color:Colors.yellow, width:10, height:20), label:'red'),
        BottomNavigationBarItem(icon: Container(color:Colors.blue, width:10, height:20), label:'red')
        ]
      
      
      ));
  }
}