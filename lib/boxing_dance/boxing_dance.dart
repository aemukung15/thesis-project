// import 'package:flutter/material.dart';

// // ignore: camel_case_types
// class boxing_dance extends StatelessWidget {
//   const boxing_dance({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           '',
//           style: TextStyle(
//             fontFamily: 'TH SarabunPSK',
//             fontSize: 25,
//             color: Color.fromARGB(255, 255, 255, 255),
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//           centerTitle: true, 
//           backgroundColor: const Color.fromARGB(255, 80, 40, 4),
//       ),
//       body: Stack(
//         children: [
//           // Background image container with BoxDecoration
//           SizedBox(
//             width: double.infinity,
//             height: double.infinity,
//             child: Container(
//               decoration: const BoxDecoration(
//                 image: DecorationImage(
//                   image: AssetImage('assets/cover2.png'),
//                   fit: BoxFit.cover,
//                 ),
//               ),
//             ),
//           ),
//           GestureDetector(
//             child: const MySlide2(), // Wrap with Expanded
//           ),
//           // const SizedBox(height: 8),
//           GestureDetector(
//             child: Center(
//               child: SelectionArea(
//                 child: Column(
//                   children: <Widget>[
//                     const SizedBox(height: 80),
//                     Container(
//                       margin: const EdgeInsets.symmetric(vertical: 5),
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         GestureDetector(
//                           onTap: () {
//                             showDialog(
//                               context: context,
//                               builder: (BuildContext context) {
//                                 return Dialog(
//                                   child: GestureDetector(
//                                     onTap: () {
//                                       Navigator.of(context).pop();
//                                     },
//                                     child: SizedBox(
//                                       width: double.infinity,
//                                       child: Image.asset(
//                                         "",
//                                         fit: BoxFit.contain,
//                                       ),
//                                     ),
//                                   ),
//                                 );
//                               },
//                             );
//                           },
//                           child: Container(
//                             margin: const EdgeInsets.symmetric(vertical: 5),
//                             child: Image.asset(
//                               "",
//                               width: 300, // Set the desired width for the image
//                               height: 300, // Set the desired height for the image
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         Container(
//                           margin: const EdgeInsets.symmetric(vertical: 5),
//                           child: ElevatedButton.icon(
//                             onPressed: () {
//                               showDialog(
//                                 context: context,
//                                 builder: (BuildContext context) {
//                                   return Dialog(
//                                     child: GestureDetector(
//                                       onTap: () {
//                                         Navigator.of(context).pop();
//                                       },
//                                       child: SizedBox(
//                                         width: double.infinity,
//                                         child: Image.asset(
//                                           "",
//                                           fit: BoxFit.contain,
//                                         ),
//                                       ),
//                                     ),
//                                   );
//                                 },
//                               );
//                             },
//                             icon: const Icon(Icons.accessibility),
//                             label: const Text('กล้ามเนื้อ'),
//                             style: ElevatedButton.styleFrom(
//                               padding: const EdgeInsets.all(5),
//                               fixedSize: const Size(150, 60),
//                               textStyle: const TextStyle(
//                                 fontSize: 15,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                               backgroundColor: const Color.fromARGB(
//                                   255,
//                                   239,
//                                   214,
//                                   157), // Set the desired button color using RGB values
//                               foregroundColor: const Color.fromARGB(
//                                   255, 0, 0, 0), // Set the desired text color
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     Container(
//                         padding: const EdgeInsets.all(5),
//                         child: const Text('วิธีปฏิบัติ',
//                             style: TextStyle(
//                                 fontSize: 23,
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.bold))),
//                     Expanded(
//                       child: Container(
//                         padding: const EdgeInsets.all(5),
//                         decoration: BoxDecoration(
//                           color: const Color.fromARGB(255, 255, 255, 255),
//                           border: Border.all(
//                             color: Colors.black,
//                             width: 1,
//                           ),
//                           borderRadius: BorderRadius.circular(10),
//                         ),
//                         child: const Scrollbar(
//                           child: SingleChildScrollView(
//                             child: Padding(
//                               padding: EdgeInsets.all(8),
//                               child: Column(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: <Widget>[
//                                   SizedBox(height: 5),
//                                   Text(
//                                     "",
//                                     style: TextStyle(
//                                       fontFamily: 'TH SarabunPSK',
//                                       fontSize: 20,
//                                     ),
//                                   ),
//                                   SizedBox(height: 5),
//                                 ],
//                               ),
//                             ),
//                           ),
//                         ),
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ],
//       ),
//       endDrawer: const MyDrawer(),
//     );
//   }
// }