import 'package:flutter/material.dart';

class Project7 extends StatefulWidget {
  const Project7({super.key});

  @override
  State<Project7> createState() => _Project7State();
}

class _Project7State extends State<Project7> {
  int _countValue = 0;

  void incrementValue() {
    setState(() {
      _countValue = _countValue + 1;
    });
  }

  void deincrementValue() {
    setState(() {
      _countValue = _countValue - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: () {
              incrementValue();
            },
            child: const Icon(Icons.add),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: FloatingActionButton(
              onPressed: deincrementValue,
              child: const Icon(Icons.remove),
            ),
          )
        ],
      ),
      body: Center(child: Text(_countValue.toString())),
    );
  }
}
