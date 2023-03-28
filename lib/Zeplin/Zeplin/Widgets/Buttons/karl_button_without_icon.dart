import 'package:flutter/material.dart';
import 'package:first_project_flutter/Zeplin/Zeplin/Text%20Style/text_style.dart';

import '../../Colors/colors.dart';

class KarlIconWithoutIcon extends StatefulWidget {
  final String text;
  final Function()? onPressed;
  const KarlIconWithoutIcon({super.key, required this.text, this.onPressed});

  @override
  State<KarlIconWithoutIcon> createState() => _KarlIconWithoutIconState();
}

class _KarlIconWithoutIconState extends State<KarlIconWithoutIcon> {
  final double _buttonHeight = 50;
  final BorderRadiusGeometry _radiusCircular = BorderRadius.circular(8);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: _buttonHeight,
        width: double.infinity,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: _radiusCircular), backgroundColor: ZeplinColors().karl),
            onPressed: widget.onPressed,
            child: Text(
              widget.text,
              style: ZeplinTextStyle().headline.copyWith(color: ZeplinColors().peach),
              textAlign: TextAlign.center,
            )));
  }
}
