import 'package:first_project_flutter/core/random_image.dart';
import 'package:flutter/material.dart';

class StackDemoView extends StatelessWidget {
  const StackDemoView({super.key});
  final _cardHeight = 50.0;
  final _cardWidth = 200.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Expanded(
              flex: 4,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned.fill(child: const RandomImage(), bottom: _cardHeight / 2),
                  Positioned(
                      height: _cardHeight,
                      width: _cardWidth,
                      bottom: 0,
                      //right: 50,left: 50 yazsak da kurtarır ama daha iyi çözüm için alignment kullan.
                      child: _cardCustom())
                ],
                //RandomImage() hazır bir propert değil biz kendimiz custom widget
                // component yaptık önceki core dosyasının içinde.
              )),
          const Spacer(flex: 6)
        ],
      ),
    );
  }
}

class _cardCustom extends StatelessWidget {
  const _cardCustom({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Card(
      color: Colors.white,
      shape: RoundedRectangleBorder(),
    );
  }
}
