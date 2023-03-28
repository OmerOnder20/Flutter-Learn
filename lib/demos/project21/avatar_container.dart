import 'package:flutter/material.dart';

class AvatarContainer extends StatelessWidget {
  const AvatarContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 70,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(color: Colors.black, width: 3),
        ),
        child: const CircleAvatar(
          backgroundImage: AssetImage("assets/png/kanekiken.png"),
        ));
  }
}
