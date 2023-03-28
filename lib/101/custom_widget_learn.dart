import 'package:flutter/material.dart';

class CustomWidgetLearn extends StatelessWidget {
  const CustomWidgetLearn({super.key});
  final String title = "Food";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: CustomButton(title: title)),
              ),
            ),
            const SizedBox(height: 100),
            CustomButton(title: title),
          ],
        ));
  }
}

class _PaddingIUtility {
  static const normalPadding = EdgeInsets.all(8.0);
  static const normal2xPadding = EdgeInsets.all(16.0);
}

class CustomButton extends StatelessWidget
    with _ColorsUtility, _PaddingIUtility {
  const CustomButton({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
          backgroundColor: _ColorsUtility.redColor,
          shape: const StadiumBorder()),
      onPressed: () {},
      child: Padding(
        padding: _PaddingIUtility.normal2xPadding,
        child: Text(title,
            style: Theme.of(context).textTheme.subtitle2?.copyWith(
                color: _ColorsUtility.whiteColor, fontWeight: FontWeight.bold)),
      ),
    );
  }
}

class _ColorsUtility {
  static const Color redColor = Colors.red;
  static const Color whiteColor = Colors.white;
}
