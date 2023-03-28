import 'package:flutter/material.dart';

import '../core/random_image.dart';

class ListTileLearn extends StatelessWidget {
  const ListTileLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          ListTile(
            title: const RandomImage(),
// title kısmına image resim de koyabilirsin.Ayrıntı için 5.videoya bak.   Image.network(imageUrl)
            onTap: () {},
            subtitle: const Text("Kill the Boss"),
            leading: const Icon(Icons.money),
            trailing: const Icon(Icons.chevron_right),
          )
        ],
      ),
    );
  }
}
