import 'package:flutter/material.dart';

import '../product/counter_hello_button.dart';
import '../product/language/language_items.dart';

class StatefullLearn extends StatefulWidget {
  const StatefullLearn({super.key});

  @override
  State<StatefullLearn> createState() => _StatefullLearnState();
}

class _StatefullLearnState extends State<StatefullLearn> {
  int _counter = 0;
  int _counterCustom = 0;

  void _incrementCounter() {
    setState(() {
      _counter = _counter + 1;
    });
  }

  void _deincrementCounter() {
    setState(() {
      _counter = _counter - 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text(LanguageItems.welcomeTitle)),
      floatingActionButton: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          FloatingActionButton(
            onPressed: _incrementCounter,
            child: const Icon(Icons.add),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: FloatingActionButton(onPressed: _deincrementCounter, child: const Icon(Icons.remove)),
          )
        ],
      ),
      body: Column(
        children: [
          Center(child: Text(_counter.toString(), style: Theme.of(context).textTheme.headline2)),
          const Placeholder(),
          const CounterHelloButton()
        ],
      ),
    );
  }
}
