// ignore_for_file: unused_import
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'lib/Widget/slide2.dart';
import 'lib/Widget/drawer.dart';

class Manual extends StatefulWidget {
  const Manual({Key? key}) : super(key: key);

  @override
  State<Manual> createState() => _ManualState();
}

class _ManualState extends State<Manual> {
  int currentIndex = 6; // Declare currentIndex variable
  CarouselController carouselController =
      CarouselController(); // Declare carouselController variable

  List<Map<String, dynamic>> imageList = [
    {"id": 1, "image_path": 'assets/home_page.png'},
    {"id": 2, "image_path": 'assets/hamburg.png'},
    {"id": 3, "image_path": 'assets/record.png'},
    {"id": 4, "image_path": 'assets/Tha_menu.png'},
    {"id": 5, "image_path": 'assets/develop.png'},
    {"id": 6, "image_path": 'assets/refer.png'},
  ];

  @override
  Widget build(BuildContext context) {
    int currentIndex = 0; // Set the initial currentIndex to 0
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'คู่มือ',
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
          centerTitle: true, 
          backgroundColor: const Color.fromARGB(255, 80, 40, 4),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image:
                AssetImage('assets/cover3.png'), // Replace with your image path
            fit: BoxFit.fill,
          ),
        ),
        // ignore: avoid_unnecessary_containers
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              GestureDetector(
                child: const MySlide2(), // Wrap with Expanded
              ),
              const SizedBox(height: 25),
              GestureDetector(
                child: InkWell(
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
                              child: Image.asset(
                                imageList[currentIndex]['image_path'],
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: CarouselSlider(
                    items: imageList
                        .map(
                          (item) => Image.asset(
                            item['image_path'],
                            fit: BoxFit.cover,
                            width: 300,
                          ),
                        )
                        .toList(),
                    carouselController: carouselController,
                    options: CarouselOptions(
                      height: 600,
                      scrollPhysics: const BouncingScrollPhysics(),
                      autoPlay: true,
                      aspectRatio: 1,
                      viewportFraction: 1,
                      onPageChanged: (index, reason) {
                        setState(() {
                          currentIndex = index;
                        });
                      },
                    ),
                  ),
                ),
              ),
              // Add more widgets here
            ],
          ),
        ),
      ),
      endDrawer: const MyDrawer(),
    );
  }
}
