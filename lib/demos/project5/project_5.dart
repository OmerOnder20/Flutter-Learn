import 'package:flutter/material.dart';

class Project5 extends StatelessWidget {
  const Project5({super.key});
  final _appBarTitle = "Today";
  final _elevatedButtonTask = "Add Task";
  final _centerText = "You have not added any task yet !";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: Padding(
          padding: PaddingUtility().verticalPadding1,
          child: Text(_appBarTitle,
              style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.white, fontWeight: FontWeight.w600)),
        ),
        backgroundColor: Colors.black,
        leading: Padding(
          padding: PaddingUtility().horizontalPadding,
          child: Icon(
            Icons.arrow_back,
            color: Colors.blue[600],
            size: 30,
          ),
        ),
        actions: [
          Padding(
            padding: PaddingUtility().actionsPadding,
            child: Icon(
              Icons.calendar_today,
              color: Colors.blue[600],
              size: 30,
            ),
          )
        ],
      ),
      body: Column(children: [
        Center(
          child: Padding(
            padding: PaddingUtility().topPadding,
            child: SizedBox(
              height: 40,
              width: 200,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue[600], shape: const StadiumBorder()),
                  onPressed: () {},
                  child: Text(_elevatedButtonTask,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          ?.copyWith(color: Colors.white, fontWeight: FontWeight.w500))),
            ),
          ),
        ),
        Padding(
          padding: PaddingUtility().textPadding,
          child: Text(
            _centerText,
            style: Theme.of(context).textTheme.headline6?.copyWith(color: Colors.grey[600]),
          ),
        ),
        Padding(
          padding: PaddingUtility().verticalPadding2,
          child: FloatingActionButton(
            backgroundColor: Colors.blue[600],
            onPressed: () {},
            child: const Icon(
              Icons.mic_none,
              color: Colors.white,
            ),
          ),
        )
      ]),
    );
  }
}

class PaddingUtility {
  final verticalPadding1 = const EdgeInsets.symmetric(vertical: 15);
  final horizontalPadding = const EdgeInsets.symmetric(horizontal: 25);
  final actionsPadding = const EdgeInsets.symmetric(horizontal: 25, vertical: 17);
  final topPadding = const EdgeInsets.only(top: 250);
  final textPadding = const EdgeInsets.symmetric(vertical: 25, horizontal: 25);
  final verticalPadding2 = const EdgeInsets.symmetric(vertical: 100);
}
