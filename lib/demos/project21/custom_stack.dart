import 'package:flutter/material.dart';

class CustomStackWithImage extends StatelessWidget {
  const CustomStackWithImage({
    Key? key,
  }) : super(key: key);
  final String text = "Hymn for the Weekend";
  final String url = "assets/jpg/real_pizza.jpg";
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.bottomStart,
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 30),
          child: Container(
            height: MediaQuery.of(context).size.height * 0.35,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage(
                      url,
                    ),
                    fit: BoxFit.cover)),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
          child: Text(
            text,
            style: Theme.of(context)
                .textTheme
                .headline5
                ?.copyWith(color: Colors.white, fontSize: 30, fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),
          ),
        )
      ],
    );
  }
}
