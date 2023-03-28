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
      body: ListView(padding: EdgeInsets.zero, children: [
        FittedBox(child: Text("Merhaba", style: Theme.of(context).textTheme.headline5)),
        Container(color: Colors.red, height: 200),
        const Divider(),
        SizedBox(
          height: 200,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              Container(color: Colors.green, width: 100),
              Container(color: Colors.white, width: 100),
              Container(color: Colors.green, width: 100),
              Container(color: Colors.white, width: 100),
              Container(color: Colors.green, width: 100)
            ],
          ),
        ),
        IconButton(onPressed: () {}, icon: const Icon(Icons.close))
      ]),
    );
  }
}

//Divider compenenti araya çizgi koymamızı sağlar.Kırmızı ve yeşil arasındaki gibi.