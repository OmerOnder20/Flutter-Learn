import 'package:flutter/material.dart';

class ColumnRowLearn extends StatelessWidget {
  const ColumnRowLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          children: [
            Expanded(
                flex: 4,
                child: Row(
                  children: [
                    Expanded(child: Container(color: Colors.purple)),
                    Expanded(child: Container(color: Colors.white)),
                    Expanded(child: Container(color: Colors.lightGreen)),
                    Expanded(child: Container(color: Colors.brown)),
                  ],
                )),
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.blue,
                )),
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.yellow,
                )),
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.green,
                )),
          ],
        ));
  }
}

// 5.video