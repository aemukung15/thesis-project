import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class MySlide extends StatefulWidget {
  const MySlide({Key? key}) : super(key: key);

  @override
  State<MySlide> createState() => _MySlideState();
}

class _MySlideState extends State<MySlide> {
  int currentIndex = 5; // Declare currentIndex variable
  CarouselController carouselController =
      CarouselController(); // Declare carouselController variable

  List<Map<String, dynamic>> imageList = [
    {"id": 1, "image_path": 'assets/slide1_1.png'},
    {"id": 2, "image_path": 'assets/slide2_1.png'},
    {"id": 3, "image_path": 'assets/slide3_1.png'},
    {"id": 4, "image_path": 'assets/slide4_1.png'},
    {"id": 5, "image_path": 'assets/slide5_1.png'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // ignore: avoid_unnecessary_containers
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image:
                AssetImage('assets/cover.png'), // Replace with your image path
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // const SizedBox(height: 300),
            SizedBox(
              child: InkWell(
                onTap: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return Dialog(
                        child: GestureDetector(
                          child: SizedBox(
                            width: double.infinity,
                            child: Image.asset(
                              imageList[currentIndex]['image_path'],
                              fit: BoxFit.fitWidth,
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
                          width: 490,
                        ),
                      )
                      .toList(),
                  carouselController: carouselController,
                  options: CarouselOptions(
                    height: 60,
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
          ],
        ),
      ),
    );
  }
}
