import 'package:flutter/material.dart';

class MyCollectionsDemos extends StatefulWidget {
  const MyCollectionsDemos({super.key});

  @override
  State<MyCollectionsDemos> createState() => _MyCollectionsDemosState();
}

class _MyCollectionsDemosState extends State<MyCollectionsDemos> {
  late final List<CollectionModel> _items;

  @override
  void initState() {
    super.initState();
    _items = [
      CollectionModel(imagePath: "assets/png/image_collection.png", title: " Yamaha   R1M     ", price: 40000),
      CollectionModel(imagePath: "assets/png/image_collection2.png", title: " Kawasaki   Ninja H2R     ", price: 50000),
      CollectionModel(imagePath: "assets/png/image_collection.png", title: " Yamaha   R1M     ", price: 40000),
      CollectionModel(imagePath: "assets/png/image_collection2.png", title: " Kawasaki   Ninja H2R     ", price: 50000),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        padding: PaddingUtility().paddingHorizontal,
        itemCount: _items.length,
        itemBuilder: (context, index) {
          return Card(
            margin: PaddingUtility().paddingBottom,
            child: SizedBox(
              height: 300,
              child: Padding(
                padding: PaddingUtility().paddingGeneral,
                child: Column(
                  children: [
                    Expanded(child: Image.asset(_items[index].imagePath)),
                    Padding(
                      padding: PaddingUtility().paddingTop,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(_items[index].title),
                          Text("${_items[index].price} dollar"),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

// 7.video

class CollectionModel {
  final String imagePath;
  final String title;
  final int price;

  CollectionModel({required this.imagePath, required this.title, required this.price});
}

class PaddingUtility {
  final paddingTop = const EdgeInsets.only(top: 10);
  final paddingBottom = const EdgeInsets.only(bottom: 10);
  final paddingHorizontal = const EdgeInsets.symmetric(horizontal: 20);
  final paddingGeneral = const EdgeInsets.all(20);
}
