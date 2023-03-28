import 'package:first_project_flutter/202/image_learn_202.dart';
import 'package:flutter/material.dart';
import 'package:kartal/kartal.dart';

class KartalView extends StatefulWidget {
  const KartalView({super.key});

  @override
  State<KartalView> createState() => _KartalViewState();
}

class _KartalViewState extends State<KartalView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(children: [
        InkWell(
          onTap: () {
            context.navigateToPage(const ImageLearn202(), type: SlideType.LEFT);
          },
          child: Text(
            "Kartal",
            style: context.textTheme.displayLarge,
          ),
        ),
        Icon(context.isIOSDevice ? Icons.ios_share : Icons.android),
        AnimatedContainer(
          duration: context.durationLow,
          color: Colors.red,
          height: context.isKeyBoardOpen ? 0 : context.dynamicHeight(0.3),
          width: context.dynamicWidth(0.2),
        ),
        const TextField(),
        InkWell(
          onTap: () {
            print("asd");
            //websiteye gitme,whatsapp ta paylaşma ve birçok özellik var.
            //exceptionslar var
            //githubtan kaynak kodlarını oku
            "kyrieirving20112000@gmail.com".launchEmail;
          },
          child: Text(
            "ofo",
            style: context.textTheme.displayLarge,
          ),
        ),
      ]),
    );
  }
}
