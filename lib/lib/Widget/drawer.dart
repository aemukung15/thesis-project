// ignore_for_file: use_key_in_widget_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:miniproject/boxing_dance/boxing_steps.dart';
import 'package:miniproject/boxing_dance/developer.dart';
import 'package:miniproject/boxing_dance/record.dart';
import 'package:miniproject/home/homepage.dart';
import 'package:miniproject/bibliography.dart';
// ignore: unused_import
import 'package:miniproject/lib/model/step_model.dart';
import 'package:miniproject/manual.dart';
import 'package:flutter/services.dart';
import 'package:shared_preferences/shared_preferences.dart';
// Add this import statement
import 'package:http/http.dart' as http;

import '../../api_constants.dart';
// Rest of your code...

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key});

  @override
  // ignore: library_private_types_in_public_api
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  // List<StepModel> _stepType1 = [];
  // List<StepModel> _stepType2 = [];

  // @override
  // void initState() {
  //   super.initState();
  //   _fetchAndFilterSteps();
  // }

  // @override
  // void dispose() {
  //   // Dispose of any resources here
  //   _stepType1.clear();
  //   _stepType2.clear();
  //   super.dispose();
  // }

  // Future<void> _fetchAndFilterSteps() async {
  //   try {
  //     final response =
  //         await http.get(Uri.parse("${ApiConstants.BASE_URL}/steps/get/all"));
  //     if (response.statusCode == 200) {
  //       final List<dynamic> responseData = jsonDecode(response.body);
  //       final List<StepModel> allSteps =
  //           responseData.map((data) => StepModel.fromJson(data)).toList();

  //       if (mounted) {
  //         _stepType1 = allSteps.where((step) => step.stepType == "1").toList();
  //         _stepType2 = allSteps.where((step) => step.stepType == "2").toList();

  //         setState(() {
  //           // Update the UI
  //         });
  //       }
  //     } else {
  //       print("Error fetching data. Status code: ${response.statusCode}");
  //     }
  //   } catch (error) {
  //     print("Error fetching data: $error");
  //   }
  // }
  List<StepModel> _stepType1 = [];
  List<StepModel> _stepType2 = [];

  @override
  void initState() {
    super.initState();
    _loadStepsFromSharedPrefs();
  }

  Future<void> _loadStepsFromSharedPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    final stepType1Json = prefs.getString('stepType1');
    final stepType2Json = prefs.getString('stepType2');

    if (stepType1Json != null && stepType2Json != null) {
      setState(() {
        _stepType1 = (jsonDecode(stepType1Json) as List)
            .map((data) => StepModel.fromJson(data))
            .toList();
        _stepType2 = (jsonDecode(stepType2Json) as List)
            .map((data) => StepModel.fromJson(data))
            .toList();
      });
    } else {
      await _fetchAndFilterSteps();
    }
  }

  @override
  void dispose() {
    _clearPrefs();

    super.dispose();
  }

  Future<void> _clearPrefs() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove('stepType1');
    prefs.remove('stepType2');
  }

  Future<void> _fetchAndFilterSteps() async {
    try {
      final response =
          await http.get(Uri.parse("${ApiConstants.BASE_URL}/steps/get/all"));
      if (response.statusCode == 200) {
        final List<dynamic> responseData = jsonDecode(response.body);
        final List<StepModel> allSteps =
            responseData.map((data) => StepModel.fromJson(data)).toList();

        _stepType1 = allSteps.where((step) => step.stepType == "1").toList();
        _stepType2 = allSteps.where((step) => step.stepType == "2").toList();

        // Save the fetched data in shared preferences
        SharedPreferences prefs = await SharedPreferences.getInstance();
        prefs.setString('stepType1', jsonEncode(_stepType1));
        prefs.setString('stepType2', jsonEncode(_stepType2));

        setState(() {
          // Update the UI
        });
      } else {
        print("Error fetching data. Status code: ${response.statusCode}");
      }
    } catch (error) {
      print("Error fetching data: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // Drawer code...
      child: SafeArea(
        child: Scrollbar(
          child: SingleChildScrollView(
            child: Column(
              children: [
                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DrawerHeader(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/Drawer1.png'),
                        ),
                      ),
                      child: null,
                    ),
                  ],
                ),
                ListTile(
                  leading: const Icon(
                    Icons.home,
                    color: Color.fromARGB(255, 80, 40, 4),
                  ),
                  title: const Text(
                    "หน้าแรก",
                  ),
                  onTap: () {
                    _loadStepsFromSharedPrefs();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MyHomePage(
                          title: 'myhomepage',
                        ),
                      ),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.history_edu,
                    color: Color.fromARGB(255, 80, 40, 4),
                  ),
                  title: const Text("คู่มือ"),
                  onTap: () {
                    _loadStepsFromSharedPrefs();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const Manual()),
                    );
                  },
                ),

                ListTile(
                  leading: const Icon(
                    Icons.history_edu,
                    color: Color.fromARGB(255, 80, 40, 4),
                  ),
                  title: const Text("ประวัติความเป็นมารำมวยโบราณ"),
                  onTap: () {
                    _loadStepsFromSharedPrefs();
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const record()),
                    );
                  },
                ),
                ExpansionTile(
                  leading: const Icon(
                    Icons.format_list_numbered_rtl,
                    color: Color.fromARGB(255, 80, 40, 4),
                  ),
                  title: const Text('ท่ารำเดี่ยว'),
                  subtitle: Text(
                    'จำนวน ${_stepType1?.length} ท่า',
                  ),
                  children: [
                    Container(
                      height: 400, // Adjust the height as needed
                      child: ListView.builder(
                        itemCount: _stepType1?.length,
                        itemBuilder: (context, index) {
                          final step = _stepType1?[index];
                          return ListTile(
                              title: Text(step?.name ?? ''),
                              onTap: () {
                                _loadStepsFromSharedPrefs();
                                Navigator.pushReplacement(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => BoxingSteps(
                                      stepId: step?.stepId ?? '',
                                    ),
                                  ),
                                );
                              });
                        },
                      ),
                    ),
                  ],
                ),
                ExpansionTile(
                  leading: const Icon(
                    Icons.format_list_numbered_rtl,
                    color: Color.fromARGB(255, 80, 40, 4),
                  ),
                  title: Text('ท่ารำหมู่'),
                  subtitle: Text(
                    'จำนวน ${_stepType2?.length} ท่า',
                  ),
                  children: [
                    Container(
                      height: 400, // Adjust the height as needed
                      child: ListView.builder(
                        itemCount: _stepType2?.length,
                        itemBuilder: (context, index) {
                          final step = _stepType2?[index];
                          return ListTile(
                            title: Text(step?.name ?? ''),
                            onTap: () {
                              _loadStepsFromSharedPrefs();
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => BoxingSteps(
                                    stepId: step?.stepId ?? '',
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      ),
                    ),
                  ],
                ),
                ListTile(
                  leading: const Icon(
                    Icons.person_search,
                    color: Color.fromARGB(255, 80, 40, 4),
                  ),
                  title: const Text("คณะผู้พัฒนา"),
                  onTap: () {
                    _loadStepsFromSharedPrefs();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const developer()),
                    );
                  },
                ),
                ListTile(
                  leading: const Icon(
                    Icons.book_outlined,
                    color: Color.fromARGB(255, 80, 40, 4),
                  ),
                  title: const Text("อ้างอิงข้อมูล"),
                  onTap: () {
                    _loadStepsFromSharedPrefs();
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const bibliography(),
                      ),
                    );
                  },
                ), // Other drawer items...
                ListTile(
                  leading: const Icon(
                    Icons.exit_to_app,
                    color: Color.fromARGB(255, 80, 40, 4),
                  ),
                  title: const Text("ออกจากแอป"),
                  onTap: () {
                    _clearPrefs();
                    // Use `SystemNavigator` to exit the app
                    SystemNavigator.pop();
                  },
                ), // Other drawer items...
              ],
            ),
          ),
        ),
      ),
    );
  }
}
