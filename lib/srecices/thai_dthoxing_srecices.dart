import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:miniproject/lib/Widget/drawer.dart';
import 'package:miniproject/lib/Widget/slide2.dart';
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
    return List<Payload>.from(data.map((item) => Payload.fromJson(item)));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AppBar(
        title: const Text(
          '',
          style: TextStyle(
            fontFamily: 'TH SarabunPSK',
            fontSize: 25,
            color: Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold,
          ),
        ),
          centerTitle: true, 
          backgroundColor: const Color.fromARGB(255, 80, 40, 4),
      ),
      endDrawer: const MyDrawer(),
    );
  }
}
