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

// Add this import statement
import 'package:http/http.dart' as http;
// Rest of your code...

class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key});

  @override
  // ignore: library_private_types_in_public_api
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  // ... other code ...

  // StepModel? _step_type_1;
  List<StepModel>? _step_type_1;

  CountStepModel? _count_step_type_1;

  List<StepModel>? _step_type_2;
  CountStepModel? _count_step_type_2;

  @override
  void initState() {
    super.initState();
    // _fetchStepDataStepType1();
    // _fetchStepDataStepType2();
    _fetchStepData(1); // Fetch data for step type 1
    _fetchStepData(2); // Fetch data for step type 2
  }

  // Future<void> _fetchStepDataStepType1() async {
  //   try {
  //     final response =
  //         await http.get(Uri.parse("http://10.0.2.2:8000/steps/get/all/1"));
  //     // print("Response Status Code: ${response.statusCode}");
  //     if (response.statusCode == 200) {
  //       final res = StepModel.fromJson(jsonDecode(response.body));
  //       // print(response.body);
  //       setState(() {
  //         _step_type_1 = res;
  //       });
  //     } else {
  //       print("Error fetching data. Status code: ${response.statusCode}");
  //     }
  //   } catch (error) {
  //     // Handle error appropriately, e.g., log or show a message
  //     print("Error fetching data: $error");
  //   }
  // }
  // Future<void> _fetchStepDataStepType1() async {
  //   try {
  //     final response =
  //         await http.get(Uri.parse("http://10.0.2.2:8000/steps/get/all/1"));
  //     if (response.statusCode == 200) {
  //       final List<dynamic> responseData = jsonDecode(response.body);
  //       final List<StepModel> steps =
  //           responseData.map((data) => StepModel.fromJson(data)).toList();

  //       setState(() {
  //         _step_type_1 = steps;
  //       });
  //     } else {
  //       print("Error fetching data. Status code: ${response.statusCode}");
  //     }
  //   } catch (error) {
  //     print("Error fetching data: $error");
  //   }
  // }

  // Future<void> _fetchStepDataStepType2() async {
  //   try {
  //     final response =
  //         await http.get(Uri.parse("http://10.0.2.2:8000/steps/get/all/2"));
  //     if (response.statusCode == 200) {
  //       final List<dynamic> responseData = jsonDecode(response.body);
  //       final List<StepModel> steps =
  //           responseData.map((data) => StepModel.fromJson(data)).toList();

  //       setState(() {
  //         _step_type_2 = steps;
  //       });
  //     } else {
  //       print("Error fetching data. Status code: ${response.statusCode}");
  //     }
  //   } catch (error) {
  //     print("Error fetching data: $error");
  //   }
  // }
  Future<void> _fetchStepData(int stepType) async {
    try {
      final response = await http
          .get(Uri.parse("http://10.0.2.2:8000/steps/get/all/$stepType"));
      if (response.statusCode == 200) {
        final List<dynamic> responseData = jsonDecode(response.body);
        final List<StepModel> steps =
            responseData.map((data) => StepModel.fromJson(data)).toList();

        if (stepType == 1) {
          setState(() {
            _step_type_1 = steps;
          });
        } else if (stepType == 2) {
          setState(() {
            _step_type_2 = steps;
          });
        }
      } else {
        print("Error fetching data. Status code: ${response.statusCode}");
      }
    } catch (error) {
      print("Error fetching data: $error");
    }
  }

  // Future<void> _fetchCountDataStep1() async {
  //   try {
  //     final response =
  //         await http.get(Uri.parse("http://10.0.2.2:8000/steps/get/count/1"));
  //     if (response.statusCode == 200) {
  //       final res = CountStepModel.fromJson(jsonDecode(response.body));
  //       // print(response.body);
  //       setState(() {
  //         _count_step_type_1 = res;
  //       });
  //     } else {
  //       print("Error fetching data. Status code: ${response.statusCode}");
  //     }
  //   } catch (error) {
  //     // Handle error appropriately, e.g., log or show a message
  //     print("Error fetching data: $error");
  //   }
  // }

  // Future<void> _fetchCountDataStep2() async {
  //   try {
  //     final response =
  //         await http.get(Uri.parse("http://10.0.2.2:8000/steps/get/count/2"));
  //     // print("Response Status Code: ${response.statusCode}");
  //     if (response.statusCode == 200) {
  //       final res = CountStepModel.fromJson(jsonDecode(response.body));
  //       // print(response.body);
  //       setState(() {
  //         _count_step_type_2 = res;
  //       });
  //     } else {
  //       print("Error fetching data. Status code: ${response.statusCode}");
  //     }
  //   } catch (error) {
  //     // Handle error appropriately, e.g., log or show a message
  //     print("Error fetching data: $error");
  //   }
  // }

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
                    'จำนวน ${_step_type_1?.length} ท่า',
                  ),
                  children: [
                    Container(
                      height: 400, // Adjust the height as needed
                      child: ListView.builder(
                        itemCount: _step_type_1?.length,
                        itemBuilder: (context, index) {
                          final step = _step_type_1?[index];
                          return ListTile(
                            title: Text(step?.name ?? ''),
                            onTap: () {
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
                ExpansionTile(
                  leading: const Icon(
                    Icons.format_list_numbered_rtl,
                    color: Color.fromARGB(255, 80, 40, 4),
                  ),
                  title: Text('ท่ารำหมู่'),
                  subtitle: Text(
                    'จำนวน ${_step_type_2?.length} ท่า',
                  ),
                  children: [
                    Container(
                      height: 400, // Adjust the height as needed
                      child: ListView.builder(
                        itemCount: _step_type_2?.length,
                        itemBuilder: (context, index) {
                          final step = _step_type_2?[index];
                          return ListTile(
                            title: Text(step?.name ?? ''),
                            onTap: () {
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
