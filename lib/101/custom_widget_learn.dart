import 'package:flutter/material.dart';


class CustomWidgetLeran extends StatelessWidget with ColorUtility {
   CustomWidgetLeran({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),

      body: Center(
        child: ElevatedButton(onPressed: (){}, child: Text('Food',style:Theme.of(context).textTheme.headlineLarge?.copyWith(color: redColor),))
      )

    );
  }
}

mixin class ColorUtility  {
  final  Color redColor = const Color(0xFFF44336);
}