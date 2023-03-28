// Bir ekran olacak bu ekranda 3 buton ve bunlara basınca renk değişimi olacak.
// Seçili olan buton selected icon olacak.

import 'package:flutter/material.dart';

class ColorDemos extends StatefulWidget {
  const ColorDemos({super.key, required this.initialColor});
  final Color? initialColor;

  @override
  State<ColorDemos> createState() => _ColorDemosState();
}

class _ColorDemosState extends State<ColorDemos> {
  Color? _backGroundColor;

  @override
  void initState() {
    _backGroundColor = widget.initialColor ?? Colors.transparent;
    super.initState();
  }

  @override
  void didUpdateWidget(covariant ColorDemos oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.initialColor != _backGroundColor && widget.initialColor != null) {
      changeBackGroundColors(widget.initialColor!);
    }
  }

  void changeBackGroundColors(Color color) {
    setState(() {
      _backGroundColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backGroundColor,
      bottomNavigationBar: BottomNavigationBar(onTap: _colorOnTap, items: const [
        BottomNavigationBarItem(icon: _ColorContainer(color: Colors.red), label: "Red"),
        BottomNavigationBarItem(icon: _ColorContainer(color: Colors.yellow), label: "Yellow"),
        BottomNavigationBarItem(icon: _ColorContainer(color: Colors.green), label: "Green"),
      ]),
    );
  }

  void _colorOnTap(int value) {
    if (value == _MyColors.red.index) {
      changeBackGroundColors(Colors.red);
    } else if (value == _MyColors.yellow.index) {
      changeBackGroundColors(Colors.yellow);
    } else if (value == _MyColors.green.index) {
      changeBackGroundColors(Colors.green);
    }
  }
}

enum _MyColors { red, yellow, green }

class _ColorContainer extends StatelessWidget {
  const _ColorContainer({
    Key? key,
    required this.color,
  }) : super(key: key);
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 20,
      height: 10,
      color: color,
    );
  }
}

//7. video