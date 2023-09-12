import 'package:flutter/material.dart';

class ListViewLearn extends StatefulWidget {
  const ListViewLearn({super.key});

  @override
  State<ListViewLearn> createState() => _ListViewLearnState();
}

class _ListViewLearnState extends State<ListViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: ListView(
          padding: EdgeInsets.zero,
          children: [
            FittedBox(
                child: Text(
              'Merhaba',
              style: Theme.of(context).textTheme.headlineLarge,
            )),
            Container(
              color: Colors.red,
              height: 300,
            ),
            const Divider(),
            SizedBox(
                height: 300,
                child: ListView(scrollDirection: Axis.horizontal, children: [
                  Container(width: 100, color: Colors.green, height: 300),
                  Container(width: 100, color: Colors.white, height: 300),
                  Container(width: 100, color: Colors.green, height: 300),
                  Container(width: 100, color: Colors.white, height: 300),
                  Container(width: 100, color: Colors.red, height: 300),
                  Container(width: 100, color: Colors.green, height: 300),
                  Container(width: 100, color: Colors.white, height: 300),
                  Container(width: 100, color: Colors.green, height: 300),
                ])),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 100),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.close),
              ),
            )
          ],
        ));
  }
}
