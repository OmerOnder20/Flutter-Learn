import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Project15 extends StatefulWidget {
  const Project15({super.key});

  @override
  State<Project15> createState() => _Project15State();
}

class _Project15State extends State<Project15> with TickerProviderStateMixin {
  late AnimationController controller = AnimationController(duration: const Duration(seconds: 2), vsync: this);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/jpg/nba_logo.jpg"), // <-- BACKGROUND IMAGE
            fit: BoxFit.cover,
          ),
        ),
      ),
      Scaffold(
        backgroundColor: Colors.transparent, // <-- SCAFFOLD WITH TRANSPARENT BG
        appBar: AppBar(
          actions: [Lottie.asset("assets/lottie/lottie_theme_change.json", controller: controller)],
          title: const Text('NEW USER'),
          backgroundColor: Colors.transparent, // <-- APPBAR WITH TRANSPARENT BG
          elevation: 0, // <-- ELEVATION ZEROED
        ),
        body: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [Lottie.asset("assets/lottie/lottie_theme_change.json")]),
      )
    ]);
  }
}
