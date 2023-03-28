import 'package:flutter/material.dart';

class Project3 extends StatelessWidget {
  const Project3({super.key});
  final _title = "Rent Home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            backgroundColor: Colors.white,
            leading: Padding(
              padding: _PaddingItems().horizontal1,
              child: const Icon(
                Icons.align_horizontal_left_rounded,
                color: Colors.black,
              ),
            ),
            actions: [
              Padding(
                padding: _PaddingItems().horizontal1,
                child: const Icon(Icons.bookmark_outline_rounded, color: Colors.black),
              ),
            ]),
        body: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                  height: 30,
                  color: Colors.red,
                  padding: EdgeInsets.symmetric(horizontal: 15),
                  child: Text(_title, style: Theme.of(context).textTheme.headline4?.copyWith(color: Colors.black))),
            ),
            Expanded(
              flex: 1,
              child: Image.asset("assets/png/home.png"),
            )
          ],
        ));
  }
}

class _PaddingItems {
  final EdgeInsets horizontal1 = const EdgeInsets.symmetric(horizontal: 15);
}
