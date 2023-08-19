import 'package:flutter/material.dart'
    show
        AppBar,
        AssetImage,
        Border,
        BorderRadius,
        BoxDecoration,
        BoxFit,
        BuildContext,
        Center,
        CircularProgressIndicator,
        Color,
        Colors,
        Column,
        Container,
        CrossAxisAlignment,
        DecorationImage,
        Dialog,
        EdgeInsets,
        ElevatedButton,
        Expanded,
        FontWeight,
        FutureBuilder,
        GestureDetector,
        Icon,
        Icons,
        Image,
        ImageChunkEvent,
        ImageConfiguration,
        Key,
        MainAxisAlignment,
        Navigator,
        NetworkImage,
        Padding,
        Row,
        Scaffold,
        Scrollbar,
        SelectionArea,
        SingleChildScrollView,
        Size,
        SizedBox,
        Stack,
        State,
        StatefulWidget,
        Text,
        TextStyle,
        Widget,
        showDialog;

import 'package:miniproject/lib/Widget/drawer.dart';
import 'package:miniproject/lib/Widget/slide2.dart';
import 'package:miniproject/lib/model/step_model.dart';

import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:cached_network_image/cached_network_image.dart';

import '../lib/Widget/network_image.dart';

class BoxingSteps extends StatefulWidget {
  final String stepId;

  const BoxingSteps({Key? key, required this.stepId}) : super(key: key);

  @override
  _BoxingStepsState createState() => _BoxingStepsState();
}

class _BoxingStepsState extends State<BoxingSteps> {
  StepModel? _stepData;
  // String stepId = 's_1_4'; // Replace with the desired step ID
  // ignore: non_constant_identifier_names
  String BASE_URL = "http://10.0.2.2:8000";

  @override
  void initState() {
    super.initState();
    _fetchStepData();
  }

  Future<void> _fetchStepData() async {
    try {
      final response = await http
          .get(Uri.parse("${BASE_URL}/steps/get/step_id/${widget.stepId}"));
      print(widget.stepId);
      print("Response Status Code: ${response.statusCode}");
      if (response.statusCode == 200) {
        final res = StepModel.fromJson(jsonDecode(response.body));
        // print(response.body);
        setState(() {
          _stepData = res;
        });
      } else {
        print("Error fetching data. Status code: ${response.statusCode}");
      }
    } catch (error) {
      // Handle error appropriately, e.g., log or show a message
      print("Error fetching data: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          _stepData != null ? "${_stepData!.name}" : "",
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
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/cover2.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          GestureDetector(
            child: const MySlide2(), // Wrap with Expanded
          ),
          // const SizedBox(height: 8),
          GestureDetector(
            child: Center(
              child: SelectionArea(
                child: Column(
                  children: <Widget>[
                    const SizedBox(height: 80),
                    Container(
                      margin: const EdgeInsets.symmetric(vertical: 5),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return Dialog(
                                  child: GestureDetector(
                                    onTap: () {
                                      Navigator.of(context).pop();
                                    },
                                    child: SizedBox(
                                      width: double.infinity,
                                      child: Image.network(
                                        "${BASE_URL}/images/${_stepData!.stepImage}", // Replace with your image URL
                                        loadingBuilder: (BuildContext context,
                                            Widget child,
                                            ImageChunkEvent? loadingProgress) {
                                          if (loadingProgress == null) {
                                            return child; // Fully loaded, show the image
                                          } else {
                                            // Display a loading indicator while the image is loading
                                            return CircularProgressIndicator(
                                              value: loadingProgress
                                                          .expectedTotalBytes !=
                                                      null
                                                  ? loadingProgress
                                                          .cumulativeBytesLoaded /
                                                      loadingProgress
                                                          .expectedTotalBytes!
                                                  : null,
                                            );
                                          }
                                        },
                                      ),
                      
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(vertical: 5),
                            child:
                                Image.network(
                              "${BASE_URL}/images/${_stepData?.stepImage}", // Replace with your image URL
                              loadingBuilder: (BuildContext context,
                                  Widget child,
                                  ImageChunkEvent? loadingProgress) {
                                if (loadingProgress == null) {
                                  return child; // Fully loaded, show the image
                                } else {
                                  // Display a loading indicator while the image is loading
                                  return CircularProgressIndicator(
                                    value: loadingProgress.expectedTotalBytes !=
                                            null
                                        ? loadingProgress
                                                .cumulativeBytesLoaded /
                                            loadingProgress.expectedTotalBytes!
                                        : null,
                                  );
                                }
                              },
                            ),

                            width: 300, // Set the desired width for the image
                            height: 300,
                          ),

                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 5),
                          child: ElevatedButton.icon(
                            onPressed: () {
                              showDialog(
                                context: context,
                                builder: (BuildContext context) {
                                  return Dialog(
                                    child: GestureDetector(
                                        onTap: () {
                                          Navigator.of(context).pop();
                                        },
                                        child: SizedBox(
                                            width: double.infinity,
                                            child: 
                                            Image.network(
                                        "${BASE_URL}/images/${_stepData!.muscleImage}", // Replace with your image URL
                                        loadingBuilder: (BuildContext context,
                                            Widget child,
                                            ImageChunkEvent? loadingProgress) {
                                          if (loadingProgress == null) {
                                            return child; // Fully loaded, show the image
                                          } else {
                                            // Display a loading indicator while the image is loading
                                            return CircularProgressIndicator(
                                              value: loadingProgress
                                                          .expectedTotalBytes !=
                                                      null
                                                  ? loadingProgress
                                                          .cumulativeBytesLoaded /
                                                      loadingProgress
                                                          .expectedTotalBytes!
                                                  : null,
                                            );
                                          }
                                        },
                                      ),
                                        ),
                                  ));
                                },
                              );
                            },
                            icon: const Icon(Icons.accessibility),
                            label: const Text('กล้ามเนื้อ'),
                            style: ElevatedButton.styleFrom(
                              padding: const EdgeInsets.all(5),
                              fixedSize: const Size(150, 60),
                              textStyle: const TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                              backgroundColor: const Color.fromARGB(
                                  255,
                                  239,
                                  214,
                                  157), // Set the desired button color using RGB values
                              foregroundColor: const Color.fromARGB(
                                  255, 0, 0, 0), // Set the desired text color
                            ),
                          ),
                        ),
                      ],
                    ),
                    Container(
                        padding: const EdgeInsets.all(5),
                        child: const Text('วิธีปฏิบัติ',
                            style: TextStyle(
                                fontSize: 23,
                                color: Colors.white,
                                fontWeight: FontWeight.bold))),
                    Expanded(
                      child: Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 255, 255),
                          border: Border.all(
                            color: Colors.black,
                            width: 1,
                          ),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Scrollbar(
                          child: SingleChildScrollView(
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 5),
                                  Text(
                                    _stepData != null
                                        ? "${_stepData!.detail}"
                                        : "",
                                    style: TextStyle(
                                      fontFamily: 'TH SarabunPSK',
                                      fontSize: 20,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      endDrawer: MyDrawer(),
    );
  }
}
