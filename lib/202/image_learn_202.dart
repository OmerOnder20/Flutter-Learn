import 'package:first_project_flutter/product/global/reqres_context.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ImageLearn202 extends StatefulWidget {
  const ImageLearn202({super.key});

  @override
  State<ImageLearn202> createState() => _ImageLearn202State();
}

class _ImageLearn202State extends State<ImageLearn202> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(actions: [
        IconButton(
            onPressed: () {
              context.read<ReqresContext>().clear();
            },
            icon: const Icon(Icons.remove))
      ], title: Text(context.read<ReqresContext>().model?.data?.length.toString() ?? "")),
      body: Column(
        children: [
          Expanded(child: Image.asset(ImagePaths.caillou.path())),
          Expanded(child: ImagePaths.caillou.toWidget()),
        ],
      ),
    );
  }
}

enum ImagePaths { caillou }

extension ImagePathsExtension on ImagePaths {
// 1.caillou yöntemi
  String path() {
    return "assets/png/$name.png";
  }

// 2.caillou yöntemi
  Widget toWidget() {
    return Image.asset(path());
  }
}

// 11.video!