import 'package:flutter/material.dart';

class ColorLearn extends StatelessWidget {
  const ColorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Container(color: ColorItems.porsche, child: Text("Welcome")),
          Container(color: Theme.of(context).errorColor, child: Text("Hello")),
          Container(
              child: Text(
            "Halo",
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(color: Theme.of(context).errorColor),
          ))
        ],
      ),
    );
  }
}

class ColorItems {
  static const Color porsche = Color(0xffEDBF61);
  static const Color sulu = Color.fromRGBO(198, 237, 97, 1);
}
