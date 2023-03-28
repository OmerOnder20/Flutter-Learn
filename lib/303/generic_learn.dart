class UserManagement<T extends AdminUser> {
  final T admin;

  UserManagement(this.admin);
  void sayName(GenericUser user) {
    print(user.name);
  }

  int calculateMoney(List<GenericUser> users) {
    int sum = 0;
    for (var element in users) {
      sum += element.money;
    }

    int initialValue = admin.role == 1 ? admin.money : 0;

    final sumMoney =
        users.map((e) => e.money).fold<int>(initialValue, (previousValue, element) => previousValue + element);
    final money = users.fold(initialValue, (previousValue, element) => previousValue + element.money);
    return money;
    return sum;
  }

  Iterable<R>? showNames<R>(List<GenericUser> users) {
    if (R is String) {
      final names = users.map((e) => e.name).cast<T>();
      return names.cast<R>();
    }

    return null;
  }
}

class GenericUser {
  final String name;
  final String id;
  final int money;

  GenericUser(this.name, this.id, this.money);

  // *singleWhere methodu bool döndürdüğü için bool döndürdük
  bool findUserName(String name) {
    return this.name == name;
  }
}

class AdminUser extends GenericUser {
  final int role;
  AdminUser(super.name, super.id, super.money, this.role);
}
