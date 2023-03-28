import 'package:flutter/material.dart';

class ListViewBuilderWithImage extends StatelessWidget {
  const ListViewBuilderWithImage({
    Key? key,
  }) : super(key: key);
  final String text1 = "Can't Stop";
  final String text2 = "Justin T.";

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      separatorBuilder: (context, index) {
        return const SizedBox(
          width: 30,
        );
      },
      scrollDirection: Axis.horizontal,
      itemCount: 4,
      itemBuilder: (BuildContext context, int index) {
        return InkWell(
          onTap: () {},
          child: Column(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.14,
                width: MediaQuery.of(context).size.height * 0.14,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(image: AssetImage("assets/jpg/living_room.jpg"), fit: BoxFit.cover)),
              ),
              Text(text1,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2
                      ?.copyWith(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w500)),
              Text(text2,
                  style: Theme.of(context).textTheme.subtitle2?.copyWith(
                      color: const Color.fromARGB(255, 114, 113, 113), fontSize: 14, fontWeight: FontWeight.w500))
            ],
          ),
        );
      },
    );
  }
}
