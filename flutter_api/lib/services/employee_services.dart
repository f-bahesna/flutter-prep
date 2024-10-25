import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class EmployeeServices {
  String baseURL = "https://regres.in/api/";

  getEmployees() async {
    try {
      var response = await http.get(Uri.parse(baseURL + "users?page=2"));
      if (response.statusCode == 200) {
        var data = response.body;
        var decodedData = jsonDecode(data);

        print(data);
      }
    } catch (e) {
      print(e.toString());
    }
  }
}
