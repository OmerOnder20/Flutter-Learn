import 'package:first_project_flutter/202/image_learn_202.dart';
import 'package:first_project_flutter/product/extensions/string_extension.dart';
import 'package:first_project_flutter/product/global/reqres_context.dart';
import 'package:first_project_flutter/product/global/theme_notifier.dart';
import 'package:first_project_flutter/product/service/project_dio.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../viewModel/reqres_provider.dart';

class ReqresView extends StatefulWidget {
  const ReqresView({super.key});

  @override
  State<ReqresView> createState() => _ReqresViewState();
}

// class _ReqresViewState extends ReqresViewModel
class _ReqresViewState extends State<ReqresView> with ProjectDioMixin {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            context.read<ThemeNotifier>().changeTheme();
          },
        ),
        appBar: AppBar(
          actions: const [_SaveAndNavigateButton()],
          title: context.watch<ReqresProvider>().isLoading
              ? const CircularProgressIndicator(
                  color: Colors.white,
                )
              : null,
        ),
        body: Column(
          children: [
            const _TempPlaceHolder(),
            Expanded(
              child: ListView.builder(
                itemCount: context.watch<ReqresProvider>().resources.length,
                itemBuilder: (BuildContext context, int index) {
                  return Card(
                      color: Color(context.watch<ReqresProvider>().resources[index].color?.colorValue ?? 0),
                      child: Text(
                        context.watch<ReqresProvider>().resources[index].name ?? "",
                      ));
                },
              ),
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: ListView.builder(
                itemCount: context.watch<ReqresProvider>().resources.length,
                itemBuilder: (BuildContext context, int index) {
                  return Text(
                    context.watch<ReqresProvider>().resources[index].name ?? "",
                    style: const TextStyle(color: Colors.black),
                  );
                },
              ),
            ),
            SizedBox(
              height: 100,
              width: 100,
              child: ListView(
                children: context.watch<ReqresProvider>().resources.map((data) {
                  return Text(data.id.toString());
                }).toList(),
              ),
            )
          ],
        ));
  }
}

class _SaveAndNavigateButton extends StatelessWidget {
  const _SaveAndNavigateButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {
          context.read<ReqresProvider>().saveToLocal(context.read<ReqresContext>());
          Navigator.of(context).push(MaterialPageRoute(
            builder: (_) {
              return const ImageLearn202();
            },
          ));
        },
        child: const Icon(Icons.ac_unit));
  }
}

class _TempPlaceHolder extends StatelessWidget {
  const _TempPlaceHolder({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Selector<ReqresProvider, bool>(
      builder: (context, value, child) {
        return value ? const Placeholder() : const Text("data");
      },
      selector: (context, provider) {
        return provider.isLoading;
      },
    );
  }
}
