import 'package:flutter/material.dart';

class MyCollectionDemo extends StatefulWidget {
  const MyCollectionDemo({super.key});

  @override
  State<MyCollectionDemo> createState() => _MyCollectionDemoState();
}

class _MyCollectionDemoState extends State<MyCollectionDemo> {
  // ignore: unused_field
  late final List<CollectionModel> _items;

  @override
  void initState() {
    super.initState();
    _items = [
      CollectionModel(imagePath: 'assets/png/image2.png', title: 'Crows1', price: 24),
      CollectionModel(imagePath: 'assets/png/imageCrow.jpg', title: 'Crows2', price: 24),
      CollectionModel(imagePath: 'assets/png/image3.png', title: 'Crows3', price: 24),
      CollectionModel(imagePath: 'assets/png/imageCrow.jpg', title: 'Crows4', price: 24)
    ];                                      
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        itemCount: _items.length,
        itemBuilder: (context, index) {
        return  Card(
          margin: const EdgeInsets.only(bottom: 30),
          child: SizedBox(
            height:300,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Expanded(child: Image.asset(_items[index].imagePath,fit: BoxFit.fill,),),
                  Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                              
                      Text(_items[index].title),
                      Text('${_items[index].price} TL')
                      ],),
                  )
                ],
              ),
            ),

          ),
        );
      }),
    );
  }
}

class CollectionModel {
  final String imagePath;
  final String title;
  final int price;

  CollectionModel({required this.imagePath, required this.title, required this.price});
}
