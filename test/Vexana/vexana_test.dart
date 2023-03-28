import 'package:flutter_test/flutter_test.dart';
import 'package:vexana/vexana.dart';

import 'unknown_model.dart';

void main() {
  late final INetworkManager networkManager;
  setUp(
    () {
      networkManager =
          NetworkManager<INetworkModel<UnknownModel>>(options: BaseOptions(baseUrl: "https://reqres.in/api"));
    },
  );
  test(
    "Vexana test",
    () async {
      final response = await networkManager.send<UnknownModel, UnknownModel>("/unknown",
          parseModel: UnknownModel(), method: RequestType.GET);
      return response.data;
    },
  );
}
