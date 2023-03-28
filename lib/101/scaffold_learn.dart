import 'package:first_project_flutter/101/container_sized_box_learn.dart';
import 'package:flutter/material.dart';

class ScaffoldLearnView extends StatelessWidget {
  const ScaffoldLearnView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Scaffold samples")),
      body: const Text("Merhaba"),
      backgroundColor: Colors.blueGrey,
      floatingActionButton: FloatingActionButton(onPressed: () {}),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      drawer: const Drawer(),
      bottomNavigationBar: Container(
        height: 100,
        decoration: ProjectUtility.boxDecoration,
        child: BottomNavigationBar(items: const [
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: "A"),
          BottomNavigationBarItem(icon: Icon(Icons.abc_outlined), label: "B"),
        ]),
      ),
    );
  }
}
