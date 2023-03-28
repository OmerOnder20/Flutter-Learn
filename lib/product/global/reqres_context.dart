import 'package:first_project_flutter/303/reqres_resources/model/reqres_model.dart';

class ReqresContext {
  ReqresModel? model;

  void saveModel(ReqresModel? model) {
    this.model = model;
  }

  void clear() {
    model = null;
  }
}
