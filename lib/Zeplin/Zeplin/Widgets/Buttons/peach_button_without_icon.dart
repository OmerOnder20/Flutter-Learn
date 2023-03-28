import 'package:first_project_flutter/Zeplin/Zeplin/Colors/colors.dart';
import 'package:first_project_flutter/Zeplin/Zeplin/Text%20Style/text_style.dart';
import 'package:flutter/material.dart';

class PeachElevatedWithoutIcon extends StatefulWidget {
  final Widget? child;
  final Function()? onPressed;

  const PeachElevatedWithoutIcon({
    super.key,
    this.onPressed,
    required this.child,
  });

  @override
  State<PeachElevatedWithoutIcon> createState() => _PeachElevatedWithoutIconState();
}

class _PeachElevatedWithoutIconState extends State<PeachElevatedWithoutIcon> {
  final double _buttonHeight = 50;
  final BorderRadiusGeometry _radiusCircular = BorderRadius.circular(8);
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: _buttonHeight,
        width: double.infinity,
        child: ElevatedButton(
            style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(borderRadius: _radiusCircular), backgroundColor: ZeplinColors().peach),
            onPressed: widget.onPressed,
            child: widget.child));
  }
}
