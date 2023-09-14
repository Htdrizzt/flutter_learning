import 'package:flutter/material.dart';
import 'package:learning_101/101/image_learn.dart';

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
          leadingWidth: 70,
          leading: Center(
            child: Text(
              'Leading',
              style: Theme.of(context).textTheme.titleMedium?.copyWith(color: Colors.red, fontSize: 18),
            ),
          ),
          actions: [
            TextButton(
                onPressed: () {
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) {
                    return const ImageLearn();
                  }));
                },
                child: Text(
                  'action 1',
                  style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.red),
                ))
          ],
          backgroundColor: Colors.blue,
          title: const Text('Drizzt Dourdenn'),
        ),
        body: Center(child: PopupMenuButton<SampleItem>(
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
