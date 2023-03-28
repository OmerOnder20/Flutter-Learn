import 'package:flutter/material.dart';

class LiseViewBuilderLearn extends StatefulWidget {
  const LiseViewBuilderLearn({super.key});

  @override
  State<LiseViewBuilderLearn> createState() => _LiseViewBuilderLearnState();
}

class _LiseViewBuilderLearnState extends State<LiseViewBuilderLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.separated(
        separatorBuilder: (context, index) {
          return const Divider(
            color: Colors.white,
          );
        },
        itemBuilder: (context, index) {
          return SizedBox(
            height: 200,
            child: Column(
              children: [Expanded(child: Image.network("https://picsum.photos/200")), Text("$index")],
            ),
          );
        },
        itemCount: 15,
      ),
    );
  }
}

//7.video