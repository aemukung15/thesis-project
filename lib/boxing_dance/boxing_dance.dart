import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:miniproject/lib/model/Payload.dart';
import 'dart:convert';
import 'package:miniproject/lib/model/ThaiDthoxingModel.dart';


class ThaiDanceServices with ChangeNotifier {
  
  String api = "http://172.28.128.1"; // Corrected API URL
  late ThaiDthoxingModel home;

  Future<ThaiDthoxingModel?> getThaiDanceServicesData() async {
    final response = await http.get(Uri.parse(api));
    if (response.statusCode == 200) {
      notifyListeners();
      var res = ThaiDthoxingModel.fromJson(jsonDecode(response.body));
      home = res;
      return res;
    } else {
      return null;
    }
  }
  Future<List<Payload>> payloadfromjson(String jsonstring) async {
    
    var url = "http://172.28.128.1";
    // ignore: unused_local_variable
    var response = await http.get(Uri.parse(url));
    final data = json.decode(jsonstring);
    return List<Payload>.from(
        data.map((item) => Payload.fromJson(item)));
  }
}
