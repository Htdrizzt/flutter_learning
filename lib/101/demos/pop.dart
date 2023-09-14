import 'package:flutter/material.dart';

class PopMenu extends StatefulWidget {
  const PopMenu({super.key});

  @override
  State<PopMenu> createState() => _PopMenuState();
}

class _PopMenuState extends State<PopMenu> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Drizzt Dourdenn'),
        ),
        body:  Center(
            child: PopupMenuButton<SampleItem>(
          itemBuilder: (BuildContext context) {
            return <PopupMenuEntry<SampleItem>>[
              const PopupMenuItem<SampleItem>(
                value: SampleItem.one,
                child: Text('One'),
              ),
              const PopupMenuItem<SampleItem>(
                value: SampleItem.two,
                child: Text('Two'),
              ),
              const PopupMenuItem<SampleItem>(
                value: SampleItem.three,
                child: Text('Three'),
              ),
            ];
          },
        )));
  }
}

enum SampleItem { itemOne, itemTwo, itemThree, one, two, three }
