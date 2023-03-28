import 'package:first_project_flutter/Zeplin/Zeplin/Colors/colors.dart';
import 'package:first_project_flutter/Zeplin/Zeplin/Text%20Style/text_style.dart';
import 'package:flutter/material.dart';

class PeachPressedElevatedWithIcon extends StatefulWidget {
  final String text;
  final Function()? onPressed;
  const PeachPressedElevatedWithIcon({super.key, required this.text, this.onPressed});

  @override
  State<PeachPressedElevatedWithIcon> createState() => _PeachPressedElevatedWithIconState();
}

class _PeachPressedElevatedWithIconState extends State<PeachPressedElevatedWithIcon> {
  final double _buttonHeight = 50;
  final IconData _icon = Icons.local_grocery_store_rounded;
  final double _iconSize = 20;
  final BorderRadiusGeometry _radiusCircular = BorderRadius.circular(8);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: _buttonHeight,
      width: double.infinity,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(borderRadius: _radiusCircular), backgroundColor: ZeplinColors().peachPressed),
        onPressed: widget.onPressed,
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
            padding: PaddingUtility()._iconPadding,
            child: Icon(
              _icon,
              color: ZeplinColors().white,
              size: _iconSize,
            ),
          ),
          Center(
            child: Text(
              widget.text,
              style: ZeplinTextStyle().headline.copyWith(color: ZeplinColors().white),
              textAlign: TextAlign.center,
            ),
          ),
        ]),
      ),
    );
  }
}

class PaddingUtility {
  final EdgeInsetsGeometry _iconPadding = const EdgeInsets.only(right: 5);
}
