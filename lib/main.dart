// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:miniproject/home/homepage.dart';
import 'package:miniproject/lib/Widget/MultiProvider.dart';
import 'package:miniproject/services/step_services.dart';
// import '../model/provider.dart';

void main() {
  runApp(const MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  MaterialColor createMaterialColor(Color color) {
    List<double> strengths = <double>[.05];
    Map<int, Color> swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }

    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }

    return MaterialColor(color.value, swatch);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch:
            createMaterialColor(const Color.fromARGB(255, 80, 40, 4)),
      ),
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                      'assets/cover2.png'), // Replace with your image path
                  fit: BoxFit.fill,
                ),
              ),
            ),
            const MyHomePage(title: 'Home'),
          ],
        ),
      ),
    );
  }
}
