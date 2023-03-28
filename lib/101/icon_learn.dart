import 'package:flutter/material.dart';

class IconLearnView extends StatelessWidget {
  IconLearnView({super.key});
  final IconSizes iconSize = IconSizes();
  final IconColors iconColors = IconColors();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello"),
      ),
      body: Column(
        children: [
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.message_outlined,
                  color: Theme.of(context).backgroundColor,
                  size: iconSize.iconSmall)),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.message_outlined,
                  color: Colors.orange, size: IconSizes().iconSmall)),
          IconButton(
              onPressed: () {},
              icon: Icon(Icons.message_outlined,
                  color: IconColors().Sulu, size: IconSizes.iconSmall2x))
        ],
      ),
    );
  }
}

//Şu alt kısımlar 101 için yeterli ve şu anlık bunları bilsen yeter.
class IconSizes {
  final double iconSmall = 40;
  static const double iconSmall2x = 80;
}

class IconColors {
  final Color Sulu = const Color(0xFFA5ED61);
}
