// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class CardLearn extends StatelessWidget {
  const CardLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            margin: ProjectMargins.cardMargin,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
            child: const SizedBox(
                height: 100, width: 300, child: Center(child: Text("Ömer"))),
          ),
          const _CustomCard(
              child: SizedBox(
                  height: 100, width: 300, child: Center(child: Text("Ömer"))))
        ],
      ),
    );
  }
}

class _CustomCard extends StatelessWidget {
  const _CustomCard({
    Key? key,
    required this.child,
  }) : super(key: key);
  final Widget child;
  static final roundedRectangleBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(30));

  @override
  Widget build(BuildContext context) {
    return Card(margin: ProjectMargins.cardMargin, child: child);
  }
}

class ProjectMargins {
  static const cardMargin = EdgeInsets.all(10);
}


// Borders: StadiumBorder(),CircleBorder(),RoundedRectangleBorder().



