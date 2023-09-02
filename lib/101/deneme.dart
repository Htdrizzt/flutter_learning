// ignore_for_file: prefer_const_constructors

import "package:flutter/material.dart";

class TextLearnView extends StatelessWidget {
  const TextLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('DENEME',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            style: TextStyle(
              fontSize: 16,
              wordSpacing: 5,
              letterSpacing: 5,
              fontWeight: FontWeight.w700,
              color: Colors.orange,
            )),
        Text('DENEME',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.right,
            style: Theme.of(context).textTheme.headlineSmall)
      ],
    )));
  }
}
