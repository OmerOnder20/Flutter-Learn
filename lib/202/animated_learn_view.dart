import 'package:flutter/material.dart';

class AnimatedLearnView extends StatefulWidget {
  const AnimatedLearnView({super.key});

  @override
  State<AnimatedLearnView> createState() => _AnimatedLearnViewState();
}

class _AnimatedLearnViewState extends State<AnimatedLearnView> with TickerProviderStateMixin {
  late AnimationController controller;

  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this, duration: _DurationItems().durationLow);
  }

  bool _isVisible = false;
  bool _isOpacity = true;

  void _changeVisible() {
    setState(() {
      _isVisible = !_isVisible;
    });
  }

  void _changeOpacity() {
    setState(() {
      _isOpacity = !_isOpacity;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _changeVisible();
          controller.animateTo(_isVisible ? 1 : 0);
        },
      ),
      appBar: AppBar(
        title: _placeHolderWidget(),
      ),
      body: Column(
        children: [
          ListTile(
            title: AnimatedOpacity(
                opacity: _isOpacity ? 1 : 0, duration: _DurationItems().durationLow, child: const Text("data")),
            trailing: IconButton(onPressed: _changeOpacity, icon: const Icon(Icons.rounded_corner)),
          ),
          AnimatedDefaultTextStyle(
              child: Text("DATA"),
              style: (_isVisible
                      ? context.textTheme().headline5?.copyWith(color: Colors.red)
                      : Theme.of(context).textTheme.subtitle1) ??
                  const TextStyle(),
              duration: _DurationItems().durationLow),
          AnimatedIcon(icon: AnimatedIcons.menu_close, progress: controller),
          AnimatedContainer(
            duration: _DurationItems().durationLow,
            color: Colors.blue,
            height: _isVisible ? 0 : MediaQuery.of(context).size.width * 0.2,
            width: MediaQuery.of(context).size.height * 0.2,
            margin: const EdgeInsets.all(5),
          )
        ],
      ),
    );
  }

  AnimatedCrossFade _placeHolderWidget() {
    return AnimatedCrossFade(
        firstChild: const Placeholder(),
        secondChild: const SizedBox.shrink(),
        crossFadeState: _isVisible ? CrossFadeState.showFirst : CrossFadeState.showSecond,
        duration: _DurationItems().durationLow);
  }
}

extension BuildContextExtension on BuildContext {
  TextTheme textTheme() {
    return Theme.of(this).textTheme;
  }
}

class _DurationItems {
  final durationLow = const Duration(seconds: 1);
}




//Text("data", style: context.textTheme().subtitle1),
//_isVisible ? Placeholder() : null, Merak ediyorsan body ye ekle.
// 11.video