import 'package:flutter/material.dart';
import 'package:miniproject/lib/Widget/drawer.dart';
import 'package:miniproject/lib/Widget/slide2.dart';

// ignore: camel_case_types
class developer extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const developer({Key? key}); // Remove the duplicated named argument

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ผู้พัฒนา',
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
                                          child: IntrinsicHeight(
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  "assets/D_2_2.png",
                                                  fit: BoxFit.contain,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Container(
                                margin: const EdgeInsets.symmetric(vertical: 5),
                                child: Column(
                                  children: [
                                    const SizedBox(
                                        height:
                                            85), // Move this line inside the Column
                                    Image.asset(
                                      "assets/D_2.png",
                                      width:
                                          400, // Set the desired width for the image
                                      height:
                                          600, // Set the desired height for the image
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 50),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
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
                                          child: IntrinsicHeight(
                                            child: Column(
                                              children: [
                                                Image.asset(
                                                  "assets/DR.png",
                                                  fit: BoxFit.contain,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                );
                              },
                              child: Container(
                                margin: const EdgeInsets.symmetric(vertical: 5),
                                child: Image.asset(
                                  "assets/DR2.png",
                                  width: 400, // Set the desired width for the image
                                  height:
                                      600, // Set the desired height for the image
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
      endDrawer: MyDrawer(),
    );
  }
}
