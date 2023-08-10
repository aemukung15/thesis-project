import 'package:flutter/material.dart';
import 'package:miniproject/lib/Widget/drawer.dart';
import 'package:miniproject/lib/Widget/slide2.dart';
import 'package:http/http.dart' as http;
import 'package:miniproject/lib/model/Payload.dart';

class boxing_dance extends StatefulWidget {
  const boxing_dance({super.key});

  @override
  State<boxing_dance> createState() => _boxing_danceState();
}

class _boxing_danceState extends State<boxing_dance> {
  late Payload _dataFromAPI;

  @override
  void initState() {
    super.initState();
    getPayload();
  }

  Future<void> getPayload() async {
    var url =
        "https://raw.githubusercontent.com/billowdev/json/main/thai_boxing_dance_1.json";
    var response = await http.get(Uri.parse(url));
    _dataFromAPI = payloadFromJson(response.body);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ท่าเสือออกจากเหล่า',
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
      body: FutureBuilder(
  future: getPayload(),
  builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
    if (snapshot.connectionState == ConnectionState.done) {
      if (snapshot.hasData) {
        var result = snapshot.data;
        return ListView(
          children: [
            ListTile(title: Text(result.stepId.toString()),),
            ListTile(title: Text(result.name),),
            ListTile(title: Text(result.detail),),
            ListTile(title: Text(result.stepImage),),
            ListTile(title: Text(result.muscleImage),),
          ],
        );
      } else if (snapshot.hasError) {
        return Text("Error: ${snapshot.error}");
      }
    }
    return CircularProgressIndicator(); // Handle other connection states
  },
),


      endDrawer: const MyDrawer(),
    );
  }
}
