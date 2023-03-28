import 'package:first_project_flutter/202/image_learn_202.dart';
import 'package:flutter/material.dart';

class Container1 extends StatelessWidget {
  const Container1({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Image.asset("assets/png/caillou.png"),
    );
  }
}
