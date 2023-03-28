import 'package:dio/dio.dart';

// Burası da lazy kullanımıdır ve aşağıdakinin aksine projenin her yerinde kullanılabilir

class ProjectNetworkManager {
  ProjectNetworkManager._() {
    _dio = Dio(BaseOptions(baseUrl: "pub.dev"));
  }
  late final Dio _dio;
  static ProjectNetworkManager instance = ProjectNetworkManager._();

  Dio get service => _dio;

  void addBaseHeadersToToken(String token) {
    _dio.options = _dio.options.copyWith(headers: {"Authorization": token});
  }
}

// Bu alttakinin kullanım amacı ise benim datam gelmeyebilir ama gelirse de
// projenin sadece 1 yerinde kullanılacak. 1 tane sadece.
// Burada kendimiz initialize ediyoruz ki projenin başka yerinde bunu çağırddığımızda
// tekrardan initialize etmeyelim.
class DurationManager {
  DurationManager._();
  static DurationManager? _manager;

  static DurationManager get manager {
    if (_manager != null) return _manager!;
    _manager = DurationManager._();
    return _manager!;
  }
}

// Bu singleton kullanımı project_dio.dart sayfasındakinin başka versiyonu.
// Alternatifi gibi düşün.
// Ama dışarıdan kimse elleyemiyor.Tek bu instance kullanılabilir.
// Kendimiz initialize ediyoruz unutma.
// Eğer Singleton yöntemi kullanılırsa projenin başka yerinde bunları çağırırken
// initialize etmek zorunda kalmazsın çünkü burada initialize ediyorsun.
// Tek bir tane network manager kullanılacak o da Dio olacak.
// project_items.dart taki açıklamaya bak
// Video 16
// reqres_view_model.dart ta da kullandık.
