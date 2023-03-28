// import 'package:first_project_flutter/202/cache/shared_learn_cache.dart';
// import 'package:first_project_flutter/303/reqres_resources/model/reqres_model.dart';
// import 'package:first_project_flutter/303/reqres_resources/service/reqres_service.dart';
// import 'package:first_project_flutter/product/service/project_manager_singleton.dart';

// import '../product/service/project_dio.dart';
// import 'reqres_resources/view/reqres_view.dart';

// abstract class ReqresViewModel extends LoadingStateful<ReqresView> with ProjectDioMixin {
//   late final IReqresService reqresService;
//   List<Data> resources = [];
//   @override
//   void initState() {
//     super.initState();
//     reqresService = ReqresService(service);
//     ProjectNetworkManager.instance.addBaseHeadersToToken("ömer");
//     _fetch();
//   }

//   // ProjectNetworkManager.instance.addBaseHeadersToToken("ömer");      video 16 izle
//   // service yerine ProjectNetworkManager.instance.service  i yazarsan mixinlerle uğraşmazsın.

//   Future<void> _fetch() async {
//     changeLoading();
//     resources = (await reqresService.fetchReqresItem())?.data ?? [];
//     changeLoading();
//   }
// }
