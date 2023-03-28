import 'dart:io';

import 'package:first_project_flutter/202/custom_exception.dart';
import 'package:url_launcher/url_launcher.dart';

abstract class IFileDownload {
  bool? downloadItem(FileItem fileItem);

  void toShare(Uri path) async {
    await launchUrl(path);
  }
}

class FileDownload extends IFileDownload {
  @override
  bool? downloadItem(FileItem fileItem) {
    if (fileItem == null) throw FileDownloadException();
    print("a");

    return true;
  }

  void smsShare() {}
}

class SMSDownload implements IFileDownload {
  @override
  bool? downloadItem(FileItem fileItem) {
    if (fileItem == null) throw FileDownloadException();
    print("a");

    return true;
  }

  @override
  Future<void> toShare(Uri path) async {
    await launchUrl(path);
  }
}

class FileItem {
  final String name;
  final String file;
// final File file;
  FileItem(this.name, this.file);
}

// 11.video mutlaka izle!
// Exception,Mixin,abstarct class,normal class,implements,extends,with etme kavramları ve 
//üst classtan güç kazanma kavramı için bu videoyu izle!
