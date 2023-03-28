import 'package:flutter/material.dart';

class LoadingButton extends StatefulWidget {
  const LoadingButton({super.key, required this.title, required this.oncallback});
  final String title;
  final Future<void> Function() oncallback;

  // VoidCallback bu ile void Function() aynı şey.

  @override
  State<LoadingButton> createState() => _LoadingButtonState();
}

class _LoadingButtonState extends State<LoadingButton> {
  bool _isLoading = false;

  void _changeLoading() {
    setState(() {
      _isLoading = !_isLoading;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () async {
        if (_isLoading) return;
        _changeLoading();
        await widget.oncallback.call();
        _changeLoading();
      },
      child: _isLoading ? const CircularProgressIndicator() : Text(widget.title),
    );
  }
}
