import 'package:collection/collection.dart';
import 'package:first_project_flutter/303/generic_learn.dart';
import 'package:first_project_flutter/product/widget/card/high_card.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(
    () {},
  );
  test("List best of", () {
    List<GenericUser> users = [GenericUser("vb", "11", 10), GenericUser("vb2", "11", 10), GenericUser("vb3", "11", 10)];

    List<HighCard> highCards = users.map((e) {
      return HighCard(items: e.name.split(",").toList());
    }).toList();

//***** Yukarıdaki kodun anlamı bu:
//Bu kod parçacığı, bir "users" listesindeki her bir eleman için "HighCard"
//sınıfından bir nesne oluşturuyor ve bunları "highCards" listesine ekliyor.
//"users" listesindeki her bir elemanın "name" özelliği, virgülle ayrılmış bir
// metin olarak alınıyor ve "split(",")" metodu ile virgülle ayrılıyor.
//Bu ayrılmış metinler, "HighCard" sınıfının "items" özelliğine atanıyor.
//Son olarak, "map()" fonksiyonu ile oluşan her bir HighCard nesnesi toList()
//fonksiyonu ile liste haline getiriliyor.
//En sonda HighCard a toList methodunu ekleyip liste methodlarıyla kullanabiliyoruz.

    //*** video 16
    // *****users.singleWhere((element) => element.name == "vb");
    // Bunun anlamı usersın içinde name i vb olanları al.
    // Ama buraya yazılmaması lazım çünkü tekrar tekrar kullanılacak o yüzden
    // bunu GenericUser içinde method haline getiriyoruz.
    // O yüzden bu şekilde kullanmalıyız
    // altta final response dedik onu sadece videoda hatayı görmek için yapıyoruz.

    // *****Bazı liste operasyonlarında uygulamam crash olabilir.Bununla alakalı
    // collection package kullan

    try {
      final response = users.singleWhere(
        (element) => element.findUserName("x"),
        orElse: () {
          return GenericUser("name", "id", 0);
        },
      );
      print(response);
    } catch (e) {
      print(e);
    }

    users.where((element) => element.money > 5);

    users.lastWhere((element) => element.id == "5");

    users.take(5);

    users.expand((element) => [GenericUser("naasdme", "asasd", 35)]);

    users.removeAt(3);

    users.removeWhere((element) => element.id == 11);

    final result = users.indexWhere((element) => element.id == 13);
    if (result >= 0) {
      users[result] = GenericUser("a", "b", 16);
    }
  });

  //***** collection paketini de kullandığımız senaryo da bu
  // collection paketinden singleWhereOrNull methodu geliyor
  //***** bunu kullanırsan uygulaman crash olmaz
  // listenin or else yazan methodlarında her zaman collection OrNull methodunu da ekler
  //***** OrNull sağlayan methodları kullanmayı sakın unutma!
  test("List best of with collection package", () {
    List<GenericUser> users = [GenericUser("vb", "11", 10), GenericUser("vb2", "11", 10), GenericUser("vb3", "11", 10)];

    final response = users.singleWhereOrNull(
      (element) => element.findUserName("x"),
    );

    users.lastWhereOrNull((element) => element.id == "5");

    print(response);
  });
}

//*** Youtube yorumu alıntı.
//*** siz bir şeyi maplediğinizde sonuç iterable olarak döner oda Listenin daha az fonksiyonel hali olarak düşünebilirsiniz komutlarınızda
//*** işlem sonunca toList methodu ekleyerek listeye olarak dönmesini sağlayabilirsiniz
//*** yani Iterable da list ama listenin daha fazla fonksiyonuna ulaşmak istersek toList() yapıyoruz. teşekkürler
