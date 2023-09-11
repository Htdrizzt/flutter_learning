import 'package:flutter/material.dart';
import 'package:learning_101/product/counter_hello_button.dart';

class StatefulLearn extends StatefulWidget {
  const StatefulLearn({super.key});

  @override
  State<StatefulLearn> createState() => _StatefulLearnState();
}

class _StatefulLearnState extends State<StatefulLearn> {
  String welcomeText = 'Merhaba Yaser';

  int _counter = 0;

  void updateState(bool isIncerement) {
    setState(() {
      _counter += isIncerement ? 1 : -1;
    });
  }

  FloatingActionButton _increment() {
    return FloatingActionButton(
        onPressed: () {
          updateState(true);
        },
        child: const Icon(Icons.add));
  }

  Padding _deincrement() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: FloatingActionButton(
          onPressed: () {
            updateState(false);
          },
          child: const Icon(Icons.remove)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [_increment(), _deincrement()],
      ),
      body: Column(
        children: [
          Center(
              child: Text(
            _counter.toString(),
            style: Theme.of(context).textTheme.headlineLarge?.copyWith(color: Colors.red),
          )),
          const Placeholder(
            color: Colors.green,
          ),
          const CounterHelloButton()
        ],
      ),
    );
  }
}
