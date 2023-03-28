import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:first_project_flutter/demos/project26/model/project_26_model.dart';

class Project26Service {
  Future<List<Data>?> fetch26() async {
    final url = Uri.parse("https://reqres.in/api/unknown");
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final responseBody = jsonDecode(response.body);
      return Project26Model.fromJson(responseBody).data;
    }
    return null;
  }
}
