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
      bottomNavigationBar: BottomNavigationBar(items :  const [
        BottomNavigationBarItem(icon: _ColorContainer(color:Colors.red), label:'red'),
        BottomNavigationBarItem(icon: _ColorContainer(color:Colors.yellow), label:'red'),
        BottomNavigationBarItem(icon: _ColorContainer(color:Colors.blue), label:'red')
        ]
      
      
      ));
  }
}

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({required this.color} );
final Color color;
  @override
  Widget build(BuildContext context) {
    return Container(color:color, width:10, height:10);
  }
}