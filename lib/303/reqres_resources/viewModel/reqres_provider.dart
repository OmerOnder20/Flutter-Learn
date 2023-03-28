import 'package:first_project_flutter/303/reqres_resources/service/reqres_service.dart';
import 'package:flutter/widgets.dart';

import '../../../product/global/reqres_context.dart';
import '../model/reqres_model.dart';

class ReqresProvider extends ChangeNotifier {
  final IReqresService reqresService;
  List<Data> resources = [];
  bool isLoading = false;

  void changeLoading() {
    isLoading = !isLoading;
    notifyListeners();
  }

  ReqresProvider(this.reqresService) {
    fetch();
  }

  Future<void> fetch() async {
    changeLoading();
    resources = (await reqresService.fetchReqresItem())?.data ?? [];
    changeLoading();
  }

  void saveToLocal(ReqresContext reqresContext) {
    reqresContext.saveModel(ReqresModel(data: resources));
  }
}
