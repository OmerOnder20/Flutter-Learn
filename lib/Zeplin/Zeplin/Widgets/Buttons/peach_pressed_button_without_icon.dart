import 'package:first_project_flutter/Zeplin/Zeplin/Colors/colors.dart';
import 'package:first_project_flutter/Zeplin/Zeplin/Text%20Style/text_style.dart';
import 'package:flutter/material.dart';

class PeachPressedElevatedWithoutIcon extends StatefulWidget {
  final String text;
  final Function()? onPressed;

  const PeachPressedElevatedWithoutIcon({super.key, required this.text, this.onPressed});

  @override
  State<PeachPressedElevatedWithoutIcon> createState() => _PeachPressedElevatedWithoutIconState();
}

class _PeachPressedElevatedWithoutIconState extends State<PeachPressedElevatedWithoutIcon> {
  final double _buttonHeight = 50;
  final BorderRadiusGeometry _radiusCircular = BorderRadius.circular(8);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: _buttonHeight,
        width: double.infinity,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: _radiusCircular),
                backgroundColor: ZeplinColors().peachPressed),
            onPressed: widget.onPressed,
            child: Text(widget.text)));
  }
}
