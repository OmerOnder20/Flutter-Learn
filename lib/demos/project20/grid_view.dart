import 'package:flutter/material.dart';

import '../project17/project_17_2_list.dart';

class GridView20 extends StatefulWidget {
  const GridView20({
    super.key,
  });

  @override
  State<GridView20> createState() => _GridViewState();
}

class _GridViewState extends State<GridView20> {
  @override
  Widget build(BuildContext context) {
    final List<Liste> listItems = Liste17().foodList;

    return GridView.builder(
      itemCount: listItems.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2, mainAxisSpacing: 20, crossAxisSpacing: 25, childAspectRatio: 2.4 / 3),
      itemBuilder: (context, index) {
        return Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
          child: Column(children: [
            Expanded(
                flex: 5,
                child: Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(listItems[index].foodImagePath), fit: BoxFit.cover),
                      borderRadius:
                          const BorderRadius.only(topLeft: Radius.circular(15), topRight: Radius.circular(15))),
                )),
            Expanded(
                flex: 4,
                child: Container(
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 48, 47, 47),
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(15), bottomRight: Radius.circular(15))),
                  child: Column(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 8, left: 14),
                      child: Text(
                        listItems[index].foodName,
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            ?.copyWith(color: Colors.white, fontSize: 19, fontWeight: FontWeight.w700),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(bottom: 15),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  color: Colors.amber[600],
                                  size: 19,
                                ),
                                Text(
                                  listItems[index].foodRate.toString(),
                                  style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Colors.grey),
                                )
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 12),
                            child: Text(
                              "${listItems[index].foodPrice}",
                              style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Colors.grey),
                            ),
                          )
                        ],
                      ),
                    ),
                  ]),
                )),
          ]),
        );
      },
    );
  }
}
