import 'package:first_project_flutter/Zeplin/Zeplin/Widgets/Buttons/karl_button_with_icon.dart';
import 'package:first_project_flutter/Zeplin/Zeplin/Widgets/Buttons/karl_button_without_icon.dart';
import 'package:first_project_flutter/Zeplin/Zeplin/Widgets/Buttons/peach_button_with_icon.dart';
import 'package:first_project_flutter/Zeplin/Zeplin/Widgets/Buttons/peach_pressed_button_without_icon.dart';
import 'package:first_project_flutter/demos/password_text_field.dart';
import 'package:flutter/material.dart';

import '../Zeplin/Zeplin/Widgets/Buttons/peach_button_without_icon.dart';

class WidgetSizeEnumViewLearn extends StatefulWidget {
  const WidgetSizeEnumViewLearn({super.key});

  @override
  State<WidgetSizeEnumViewLearn> createState() => _WidgetSizeEnumViewLearnState();
}

class _WidgetSizeEnumViewLearnState extends State<WidgetSizeEnumViewLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Card(
            child: Container(
              height: WidgetSizes.normalCardHeight.value(),
              color: Colors.green,
            ),
          ),
          const PasswordTextField(controller: null),
          PeachElevatedWithoutIcon(
            onPressed: () {},
            child: const Text("dataaaaaaa"),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: PeachButtonWithIcon(onPressed: () {}, text: "Primary button with icon"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: PeachButtonWithIcon(onPressed: () {}, text: "It's done!"),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: PeachElevatedWithoutIcon(onPressed: () {}, child: const Text("dataaaaaaa")),
          ),
          PeachPressedElevatedWithoutIcon(onPressed: () {}, text: "datassssSSSS"),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: PeachButtonWithIcon(
              text: "LOlll",
              onPressed: () {},
            ),
          ),
          KarlIconWithoutIcon(onPressed: () {}, text: "new dayyyyyy"),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: KarlElevatedWithIcon(
              text: "woawwww",
              onPressed: () {},
            ),
          ),
        ],
      ),
    );
  }
}

enum WidgetSizes { normalCardHeight, circleProfileWidht }

extension WidgetSizeExtension on WidgetSizes {
  double value() {
    switch (this) {
      case WidgetSizes.normalCardHeight:
        return 30;
      case WidgetSizes.circleProfileWidht:
        return 25;
    }
  }
}
