import 'package:flutter/material.dart';

class CounterHelloButton extends StatefulWidget {
  const CounterHelloButton({super.key});

  @override
  State<CounterHelloButton> createState() => _CounterHelloButtonState();
}

class _CounterHelloButtonState extends State<CounterHelloButton> {
  var welcomeText='Merhaba Yaser';
    int _counter2 = 0;

    void _updateCounter(bool isIncrement) {
      isIncrement? _counter2++ : _counter2--;
    }
  @override
  Widget build(BuildContext context) {
    
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _updateCounter(true);
        });
      },
      style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
      child: Text('$welcomeText $_counter2'),
    );
  }
}
