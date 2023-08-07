import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:miniproject/lib/model/ThaiDthoxingModel.dart';

class ThaiDanceServices with ChangeNotifier {
  String api = "https://raw.githubusercontent.com/billowdev/json/main/thai_boxing_dance_1.json";
  late ThaiDthoxingModel home; // Use the correct class name here

  // Change the return type and variable type to use ThaiDthoxingModel
  Future<ThaiDthoxingModel?> getThaiDanceServicesData() async {
    final response = await http.get(Uri.parse(api));
    if (response.statusCode == 200) {
      notifyListeners();
      var res = ThaiDthoxingModel.fromJson(jsonDecode(response.body)); // Use the correct class name here
      home = res;
      return res;
    } else {
      return null;
    }
  }
}
