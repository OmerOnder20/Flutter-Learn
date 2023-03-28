import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:url_launcher/url_launcher.dart';

class PackageLearnView extends StatefulWidget {
  const PackageLearnView({
    super.key,
  });

  @override
  State<PackageLearnView> createState() => _PackageLearnViewState();
}

class _PackageLearnViewState extends State<PackageLearnView> with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          Text(
            "Ömer Faruk Önder",
            style: Theme.of(context).textTheme.subtitle1,
          ),
          SpinKitFadingFour(
            color: Colors.green,
            size: 30.0,
            controller: AnimationController(vsync: this, duration: const Duration(milliseconds: 1200)),
          ),
          FloatingActionButton(
            backgroundColor: Theme.of(context).buttonTheme.colorScheme?.onSecondary,
            onPressed: () {},
          )
        ],
      ),
    );
  }
}
 

// Paket için farklı dosya oluştur.Ana sayfada import etme!
// 10.video
// Native paketlerde projeyi açıp tekrardan kapat! Emulatörün üstündeki kırmızı kare.