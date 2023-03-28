import 'package:first_project_flutter/product/widget/button/answer_button.dart';
import 'package:first_project_flutter/product/widget/button/loading_button.dart';
import 'package:first_project_flutter/product/widget/callback_dropdown.dart';
import 'package:flutter/material.dart';

class CallBackLearn extends StatefulWidget {
  const CallBackLearn({super.key});

  @override
  State<CallBackLearn> createState() => _CallBackLearnState();
}

class _CallBackLearnState extends State<CallBackLearn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          CallBackDropDown(
            onUserSelected: (CallBackUser user) {
              print(user);
            },
          ),
          AnswerButton(
            onNumber: (number) {
              return number % 3 == 1;
            },
          ),
          LoadingButton(
            title: "Save",
            oncallback: () async {
              await Future.delayed(const Duration(seconds: 1));
            },
          )
        ],
      ),
    );
  }
}

class CallBackUser {
  final String name;
  final int id;

  CallBackUser(this.name, this.id);

  //Farklı bir dummy kullanımı.
  static List<CallBackUser> dummyUsers() {
    return [CallBackUser("ömer", 20), CallBackUser("faruk", 200)];
  }

  @override
  bool operator ==(covariant CallBackUser other) {
    if (identical(this, other)) return true;

    return other.name == name && other.id == id;
  }

  @override
  int get hashCode => name.hashCode ^ id.hashCode;
}

// Listelerde eğer böyle bir hata alıyorsan en iyi yöntem oluşturduğun sınıfa gidip
// comment . ya bas ve equality metodunu kullan.
// 14.videoda daha ayrıntılı anlatıldı!



//There should be exactly one item with [DropdownButton]'s value: Instance of 'CallBackUser'. 
//Either zero or 2 or more [DropdownMenuItem]s were detected with the same value
//'package:flutter/src/material/dropdown.dart':
//package:flutter/…/material/dropdown.dart:1
//Failed assertion: line 890 pos 15: 'items == null || items.isEmpty || value == null ||
//              items.where((DropdownMenuItem<T> item) {
//                return item.value == value;
//              }).length == 1'