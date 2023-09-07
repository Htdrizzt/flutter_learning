import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Text(
          'data',
          style: Theme.of(context)
              .textTheme
              .headlineLarge?.copyWith(color: Colors.yellow),
        ));
  }
}
