import 'package:first_project_flutter/demos/project16/project_16_service.dart';
import 'package:first_project_flutter/demos/project16/project_16_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../product/service/project_dio.dart';

class Project16View extends StatefulWidget {
  const Project16View({super.key});

  @override
  State<Project16View> createState() => _Project16ViewState();
}

class _Project16ViewState extends State<Project16View> with ProjectDioMixin {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Project16Provider>(
      create: (context) => Project16Provider(Project16Service(serviceProject16)),
      builder: (context, child) {
        return Scaffold(
          appBar: AppBar(
            title: context.watch<Project16Provider>().isLoading ? const CircularProgressIndicator() : null,
          ),
          body: Column(
            children: [
              Expanded(
                flex: 1,
                child: Center(
                  child: ElevatedButton(
                    onPressed: context.read<Project16Provider>().changeAppearDatas,
                    child: const Text("OK"),
                  ),
                ),
              ),
              context.watch<Project16Provider>().appearRealDatas
                  ? Expanded(
                      flex: 4,
                      child: SizedBox(
                        height: 300,
                        child: ListView.builder(
                          itemCount: context.watch<Project16Provider>().project16Datas?.length,
                          itemBuilder: (BuildContext context, int index) {
                            return ListTile(
                              leading: Text(context.watch<Project16Provider>().project16Datas?[index].body ?? ""),
                              title: Text(context.watch<Project16Provider>().project16Datas?[index].body ?? ""),
                              subtitle:
                                  Text(context.watch<Project16Provider>().project16Datas?[index].id.toString() ?? ""),
                              trailing: Text(
                                  context.watch<Project16Provider>().project16Datas?[index].userId.toString() ?? ""),
                            );
                          },
                        ),
                      ),
                    )
                  : const SizedBox.shrink(),
            ],
          ),
        );
      },
    );
  }
}
