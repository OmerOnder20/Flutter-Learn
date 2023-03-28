import 'dart:developer';

import 'package:flutter/material.dart';

class AlertLearn extends StatefulWidget {
  const AlertLearn({super.key});

  @override
  State<AlertLearn> createState() => _AlertLearnState();
}

class _AlertLearnState extends State<AlertLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final response = await showDialog(
              barrierDismissible: false,
              context: context,
              builder: (context) {
                return _ImageZoomDialog();
                //UpdateDialog(context: context);
              });
        },
      ),
    );
  }
}

class _UpdateDialog extends StatelessWidget {
  const _UpdateDialog({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.cyanAccent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      title: const Text("Yeni Versiyon"),
      actions: [
        ElevatedButton(
            onPressed: () {
              Navigator.pop(context, true);
            },
            child: const Text("Yükle")),
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text("Şimdi değil"))
      ],
    );
  }
}

class Keys {
  static const yeniVersiyon = "Yeni Versiyon";
  static const yukle = "Yükle";
  static const simdiDegil = "Yeni Versiyon";
}

class UpdateDialog extends AlertDialog {
  UpdateDialog({Key? key, required BuildContext context})
      : super(
          key: key,
          backgroundColor: Colors.cyanAccent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          title: const Text(Keys.yeniVersiyon),
          actions: [
            ElevatedButton(
                onPressed: () {
                  Navigator.pop(context, true);
                },
                child: const Text(Keys.yukle)),
            TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(Keys.simdiDegil))
          ],
        );
}

class _ImageZoomDialog extends StatelessWidget {
  const _ImageZoomDialog({
    Key? key,
  }) : super(key: key);
  final String _imageUrl = "https://picsum.photos/200";
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetPadding: EdgeInsets.zero,
      child: InteractiveViewer(
        child: Image.network(
          _imageUrl,
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height * 0.6,
        ),
      ),
    );
  }
}




//showAboutDialog(context: context, applicationName: "Omer Faruk", children: [const Text(" ONDER")]);

// sheet te de alert de cevap döndürmelisin!