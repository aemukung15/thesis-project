import 'package:flutter/material.dart';
import 'package:miniproject/lib/Widget/drawer.dart';
import 'lib/Widget/slide2.dart';

// ignore: camel_case_types
class bibliography extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const bibliography({Key? key}); // Remove the duplicated named argument

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'อ้างออิงข้อมูล',
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
          // Background image container with BoxDecoration
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/cover3.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // const Expanded(
          //   child: MySlide2(), // Wrap with Expanded
          // ),
          GestureDetector(
            child: Center(
              child: SelectionArea(
                child: SingleChildScrollView(
                  child: Scrollbar(
                    child: Column(
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            GestureDetector(
                              child: Container(
                                margin: const EdgeInsets.symmetric(vertical: 5),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                        height:
                                            85), // Move this line inside the Column
                                    Image.asset(
                                      "assets/bibliography.png",
                                      width:
                                          400, // Set the desired width for the image
                                      height:
                                          800, // Set the desired height for the image
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 100),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          const SingleChildScrollView(
            child: MySlide2(), // Wrap with Expanded
          ),
        ],
      ),
      endDrawer: const MyDrawer(),
    );
  }
}
