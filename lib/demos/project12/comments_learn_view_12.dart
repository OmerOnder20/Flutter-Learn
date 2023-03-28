import 'package:first_project_flutter/demos/project12/project_12_service_models.dart';
import 'package:flutter/material.dart';

import 'comment_model_12.dart';

class CommentViewLearn12 extends StatefulWidget {
  const CommentViewLearn12({super.key, this.postId});
  final int? postId;

  @override
  State<CommentViewLearn12> createState() => _CommentViewLearn12State();
}

class _CommentViewLearn12State extends State<CommentViewLearn12> {
  late final IpostService postService;
  bool _isLoading = false;
  List<CommentModelDemo>? _commentsItem;

  @override
  void initState() {
    super.initState();
    postService = ServiceModels();
    fetchItemsWithId(widget.postId ?? 0);
  }

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  Future<void> fetchItemsWithId(int postId) async {
    _changeLoading();
    _commentsItem = await postService.fetchItemsSpesificWithPostId(postId);
    _changeLoading();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: _commentsItem?.length ?? 0,
        itemBuilder: (BuildContext context, int index) {
          return Card(
            child: Text(_commentsItem?[index].email ?? ""),
          );
        },
      ),
    );
  }
}
