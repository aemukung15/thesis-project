
// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:miniproject/boxing_dance/boxing_dance.dart';
import 'package:miniproject/boxing_dance/boxing_dance1_10.dart';
import 'package:miniproject/boxing_dance/boxing_dance1_11.dart';
import 'package:miniproject/boxing_dance/boxing_dance1_12.dart';
import 'package:miniproject/boxing_dance/boxing_dance1_13.dart';
import 'package:miniproject/boxing_dance/boxing_dance1_14.dart';
import 'package:miniproject/boxing_dance/boxing_dance1_2.dart';
import 'package:miniproject/boxing_dance/boxing_dance1_3.dart';
import 'package:miniproject/boxing_dance/boxing_dance1_4.dart';
import 'package:miniproject/boxing_dance/boxing_dance1_5.dart';
import 'package:miniproject/boxing_dance/boxing_dance1_6.dart';
import 'package:miniproject/boxing_dance/boxing_dance1_7.dart';
import 'package:miniproject/boxing_dance/boxing_dance1_8.dart';
import 'package:miniproject/boxing_dance/boxing_dance1_9.dart';
import 'package:miniproject/boxing_dance/boxing_dance2_1.dart';
import 'package:miniproject/boxing_dance/boxing_dance2_2.dart';
import 'package:miniproject/boxing_dance/boxing_dance2_3.dart';
import 'package:miniproject/boxing_dance/boxing_dance2_4.dart';
import 'package:miniproject/boxing_dance/boxing_dance2_5.dart';
import 'package:miniproject/boxing_dance/boxing_dance2_6.dart';
import 'package:miniproject/boxing_dance/boxing_dance2_7.dart';
import 'package:miniproject/boxing_dance/boxing_dance2_8.dart';
import 'package:miniproject/boxing_dance/boxing_dance1_1.dart';
import 'package:miniproject/boxing_dance/boxing_dance2_9.dart';
import 'package:miniproject/boxing_dance/developer.dart';
import 'package:miniproject/boxing_dance/record.dart';
import 'package:miniproject/home/homepage.dart';
import 'package:miniproject/bibliography.dart';
import 'package:miniproject/manual.dart';
import 'package:flutter/services.dart'; // Add this import statement


// Rest of your code...


class MyDrawer extends StatefulWidget {
  const MyDrawer({Key? key});

  @override
  // ignore: library_private_types_in_public_api
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  // ... other code ...

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
                      ), child: null,
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
                  subtitle: const Text(
                    'จำนวน 12 ท่า',
                  ),
                  children: [
                    ListTile(
                      title: const Text('test'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const boxing_dance(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('ท่าเสือออกจากเหล่า'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const boxing_dance1_1(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('ท่าย่างสามขุม'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const boxing_dance1_2(),
                          ),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('ท่ากุมภัณฑ์ถอยทัพ'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const boxing_dance1_3()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('ท่าลับหอกโมกขศักดิ์'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const boxing_dance1_4()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('ท่าตบผาบปราบมาร'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const boxing_dance1_5()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('ท่าทะยานเหยื่อเสือลากหาง'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const boxing_dance1_6()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('ท่าไก่เลียบเล้า'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const boxing_dance1_7()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('ท่าน้าวคันศร'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const boxing_dance1_8()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('ท่ากินนรเข้าถ้ำ'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const boxing_dance1_9()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('ท่าเตี้ยต่ำเสือหมอบ'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const boxing_dance1_10()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('ท่าทรพีชนพ่อ'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const boxing_dance1_11()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('ท่าล่อแก้วเมขลา'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const boxing_dance1_12()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('ท่าม้ากระทืบโรง'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const boxing_dance1_13()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('ท่าช้างโขลงทะลายป่า'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const boxing_dance1_14()),
                        );
                      },
                    ),
                  ],
                ),
                ExpansionTile(
                  leading: const Icon(
                    Icons.format_list_numbered_rtl,
                    color: Color.fromARGB(255, 80, 40, 4),
                  ),
                  title: const Text('ท่ารำหมู่'),
                  subtitle: const Text(
                    'จำนวน 9 ท่า',
                  ),
                  children: [
                    ListTile(
                      title: const Text('ท่ากาเต้นก้อนขี้ไถ'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const boxing_dance2_1()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('ท่าหวะพราย'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const boxing_dance2_2()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('ท่าย่างสามขุม'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const boxing_dance2_3()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('ท่าน้าวเฮียวไผ่'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const boxing_dance2_4()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('ท่าไล่ลูกแตก-ตบผาบปราบมาร'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const boxing_dance2_5()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('ท่าช้างม้วนงวง'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const boxing_dance2_6()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('ท่าทวงฮัก กวักชู้'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const boxing_dance2_7()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('ท่าแหลวถลา กาตากปีก'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const boxing_dance2_8()),
                        );
                      },
                    ),
                    ListTile(
                      title: const Text('ท่าเลาะเลียบตูบ'),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const boxing_dance2_9()),
                        );
                      },
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
              ),// Other drawer items...
              ],
            ),
          ),
        ),
      ),
    );
  }
}