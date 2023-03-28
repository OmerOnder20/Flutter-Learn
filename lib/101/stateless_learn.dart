import 'package:flutter/material.dart';

class StatelessLearn extends StatelessWidget {
  const StatelessLearn({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          const TitleTextWidget(text: "Ömer"),
          _emptyBox(),
          const TitleTextWidget(text: "Faruk"),
          _emptyBox(),
          const TitleTextWidget(text: "Önder"),
          const _CustomContainer(),
          _emptyBox(),
        ],
      ),
    );
  }

  SizedBox _emptyBox() => const SizedBox(
        height: 20,
      );
}

class _CustomContainer extends StatelessWidget {
  const _CustomContainer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.blue),
    );
  }
// alttan tire yani _ işaretini vererek private haline getirdik.Bu sınıfa yani widgeta
//yani _CustomContainer widgetına sadece bu sayfadan yani stateless_learn.dart sayfasından ulaşılır.
//Eğer private yapmazsak diğer sayfalardan da ulaşabiliriz.
}

class TitleTextWidget extends StatelessWidget {
  const TitleTextWidget({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Text(text, style: Theme.of(context).textTheme.headline3);
  }
}
