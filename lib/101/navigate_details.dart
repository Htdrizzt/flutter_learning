import 'package:flutter/material.dart';

class NavigateDetailsLearn extends StatefulWidget {
  const NavigateDetailsLearn({super.key});

  @override
  State<NavigateDetailsLearn> createState() => _NavigateDetailsLearnState();
}

class _NavigateDetailsLearnState extends State<NavigateDetailsLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar() ,
      body: Center(
        child:ElevatedButton.icon(onPressed: (){Navigator.of(context).pop(true);}, icon: const Icon(Icons.check), label:const Text("Onayla"))
      ),
    );
  }
}