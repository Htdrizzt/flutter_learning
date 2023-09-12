// ignore_for_file: unused_element

import 'dart:developer';

import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({super.key, required this.initialColor});
  final Color? initialColor;

  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  Color? _backgroundColor = Colors.transparent;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _backgroundColor= widget.initialColor ?? Colors.transparent;
  }
  
  @override
  void didUpdateWidget(covariant ColorDemos oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    inspect(widget);
    if (widget.initialColor != _backgroundColor && widget.initialColor != null) {
      changeBackgroundColor(widget.initialColor!);
  }}

  void changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: _backgroundColor,
      bottomNavigationBar: BottomNavigationBar(onTap: _colorOnTap, items: const [
        BottomNavigationBarItem(icon: _ColorContainer(color: Colors.red), label: 'red'),
        BottomNavigationBarItem(icon: _ColorContainer(color: Colors.yellow), label: 'yellow'),
        BottomNavigationBarItem(icon: _ColorContainer(color: Colors.blue), label: 'blue')
      ]),
    );
  }

  void _colorOnTap(value) {
    if (value == _MyColors.red.index) {
      changeBackgroundColor(Colors.red);
    } else if (value == _MyColors.yellow.index) {
      changeBackgroundColor(Colors.yellow);
    } else if (value == _MyColors.blue.index) {
      changeBackgroundColor(Colors.blue);
    }
  }
}

enum _MyColors {
  red,
  yellow,
  blue,
}

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({required this.color});
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: color,
      width: 10,
      height: 10,
    );
  }
}
