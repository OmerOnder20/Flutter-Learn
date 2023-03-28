import 'package:flutter/material.dart';

class IndicatorLearn extends StatelessWidget {
  const IndicatorLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            AppBar(actions: const [Center(child: CircularProgressIndicator())]),
        body: const Center(child: CircularProgressIndicator()));
  }
}

//Rengi direkt main dartın içine koyup temadan verdik.
class CenterCircularProgressIndicator extends StatelessWidget {
  const CenterCircularProgressIndicator({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: Colors.white,
        strokeWidth: 10,
      ),
    );
  }
}
