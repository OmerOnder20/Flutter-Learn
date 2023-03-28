import 'package:first_project_flutter/demos/project18/service.dart';
import 'package:first_project_flutter/demos/project18/view_model.dart';
import 'package:first_project_flutter/product/service/project_dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class NewStateful extends StatefulWidget {
  const NewStateful({super.key});

  @override
  State<NewStateful> createState() => _NewStatefulState();
}

class _NewStatefulState extends State<NewStateful> with ProjectDioMixin {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => NewProviderViewModel(NewService(service)),
      builder: (context, child) {
        return Scaffold(
            appBar: AppBar(
              title: const Text("Trying"),
            ),
            backgroundColor: Colors.white,
            body: Column(
              children: [
                SizedBox(
                  width: 200,
                  height: 200,
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return ListTile(
                        title: Text(
                          context.watch<NewProviderViewModel>().items[index].name ?? "",
                          style: Theme.of(context).textTheme.subtitle1?.copyWith(color: Colors.black),
                        ),
                      );
                    },
                    itemCount: context.watch<NewProviderViewModel>().items.length,
                  ),
                ),
              ],
            ));
      },
    );
  }
}
