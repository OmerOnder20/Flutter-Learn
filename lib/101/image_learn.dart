import 'package:flutter/material.dart';

class ImageLearn extends StatelessWidget {
  const ImageLearn({super.key});
  final String _imagePath =
      "https://www.clipartmax.com/png/middle/144-1448307_cheeb-zed-by-kira-nyan-zed-lol-chibi.png";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(height: 100, width: 100, child: Image.asset(ImageItems().caillouwithcartoon, fit: BoxFit.cover)),
          SizedBox(height: 100, width: 100, child: Image.asset(ImageItems().kyriewithboston, fit: BoxFit.cover)),
          SizedBox(height: 100, width: 100, child: PngImage(name: ImageItems().kyriewithboston2)),
          Expanded(
            child: Image.network(
                "https://www.clipartmax.com/png/middle/144-1448307_cheeb-zed-by-kira-nyan-zed-lol-chibi.png",
                errorBuilder: (context, error, stackTrace) => PngImage(name: ImageItems().kyriewithboston2)),
          )
        ],
      ),
    );
  }
}

class ImageItems {
  final String caillouwithcartoon = "assets/5a68f75c01d15068bdfe880e.png";
  final String kyriewithboston2 =
      "ang-clipart-kyrie-irving-kyrie-irving-boston-celtics-running-celebrities-sports-celebrities";
  final String kyriewithboston =
      "assets/png/ang-clipart-kyrie-irving-kyrie-irving-boston-celtics-running-celebrities-sports-celebrities.png";
}

class PngImage extends StatelessWidget {
  const PngImage({super.key, required this.name});
  final String name;
  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/png/$name.png", fit: BoxFit.cover, height: 350, width: 275);
  }
}
