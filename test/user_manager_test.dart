import 'package:first_project_flutter/303/generic_learn.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  setUp(
    () {},
  );
  test(
    "Sample Test",
    () {
      final users = [GenericUser("Ömer", "20", 30), GenericUser("Faruk", "20", 40), GenericUser("Önder", "20", 50)];

      final userManagement = UserManagement(AdminUser("name", "20", 30, 1));

      final result = UserManagement(AdminUser("name", "20", 30, 1)).calculateMoney(users);

      final response = userManagement.showNames<String>(users);
      expect(result, 120);
    },
  );
}
