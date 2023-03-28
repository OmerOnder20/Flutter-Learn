import 'package:flutter/material.dart';

import 'custom_column.dart';

class Page1 extends StatefulWidget {
  const Page1({
    Key? key,
    required this.onPressed,
  }) : super(key: key);
  final void Function()? onPressed;
  @override
  State<Page1> createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: CustomColumn(widget: widget),
    );
  }
}
