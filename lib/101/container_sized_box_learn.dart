import 'package:flutter/material.dart';

class ContainerSizedBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(
            width: 300,
            height: 300,
            child: Text("A" * 500),
          ),
          const SizedBox.shrink(),
          SizedBox.square(
            dimension: 70,
            child: Text("B" * 30),
          ),
          Container(
            width: 50,
            height: 50,
            constraints: BoxConstraints(maxWidth: 100, minWidth: 50, maxHeight: 100),
            child: Text("CC" * 2),
            padding: const EdgeInsets.all(10),
            margin: const EdgeInsets.all(10),
            decoration: ProjectUtility.boxDecoration,
          )
        ],
      ),
    );
  }
}

class ProjectUtility {
  static BoxDecoration boxDecoration = BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      gradient: const LinearGradient(colors: [Colors.red, Colors.black]),
      boxShadow: const [BoxShadow(color: Colors.green, offset: Offset(0.2, 1.2), blurRadius: 12)],
      border: Border.all(width: 10, color: Colors.white12));
}
