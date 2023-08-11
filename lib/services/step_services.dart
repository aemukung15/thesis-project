import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:miniproject/lib/Widget/drawer.dart';
import 'package:miniproject/lib/model/Payload.dart';
import 'dart:convert';
import 'package:miniproject/lib/model/step_model.dart';

class StepService with ChangeNotifier {
  static const String _api =
      "http://10.0.2.2/steps/get/all"; // Corrected API URL

  StepModel? _home;

  StepModel? get home => _home;

  Future<void> fetchStepServiceData() async {
    try {
      final response = await http.get(Uri.parse(_api));
      if (response.statusCode == 200) {
        final res = StepModel.fromJson(jsonDecode(response.body));
        _home = res;
        notifyListeners();
      }
    } catch (error) {
      // Handle error appropriately, e.g., log or show a message
      print("Error fetching data: $error");
    }
  }

}
