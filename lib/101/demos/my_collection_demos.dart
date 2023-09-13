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
    _items = CollectionItems().items;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
          padding: PaddingUtility().paddingHoriontal,
          itemCount: _items.length,
          itemBuilder: (context, index) {
            return Card(
              margin: PaddingUtility().paddingBottom,
              child: SizedBox(
                height: 300,
                child: Padding(
                  padding: PaddingUtility().paddingAll,
                  child: Column(
                    children: [
                      Expanded(
                        child: Image.asset(
                          _items[index].imagePath,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Padding(
                        padding: PaddingUtility().paddingTop,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [Text(_items[index].title), Text('${_items[index].price} TL')],
                        ),
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

class PaddingUtility {
  final paddingAll = const EdgeInsets.all(20.0);
  final paddingBottom = const EdgeInsets.only(bottom: 30);
  final paddingTop = const EdgeInsets.only(top: 8.0);
  final paddingHoriontal = const EdgeInsets.symmetric(horizontal: 20);
}

class CollectionItems {
  late final List<CollectionModel> items;
  CollectionItems() {
    items = [
      CollectionModel(imagePath: ProjectImageUrls.image1, title: 'Crows1', price: 24),
      CollectionModel(imagePath: ProjectImageUrls.image2, title: 'Crows2', price: 24),
      CollectionModel(imagePath: ProjectImageUrls.image3, title: 'Crows3', price: 24),
      CollectionModel(imagePath: ProjectImageUrls.image2, title: 'Crows4', price: 24)
    ];
  }
}

class ProjectImageUrls {
  static const image1 = 'assets/png/image2.png';
  static const image2 = 'assets/png/imageCrow.jpg';
  static const image3 = 'assets/png/image3.png';
}
