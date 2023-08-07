import 'package:flutter/material.dart';
import 'package:miniproject/lib/Widget/drawer.dart';
import 'package:miniproject/lib/Widget/slide2.dart';

// ignore: camel_case_types
class boxing_dance1_7 extends StatelessWidget {
  const boxing_dance1_7({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'ท่าไก่เลียบเล้า',
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
                                      child: Image.asset(
                                        "assets/7.png",
                                        fit: BoxFit.contain,
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
                              "assets/7.png",
                              width: 300, // Set the desired width for the image
                              height:
                                  300, // Set the desired height for the image
                            ),
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
                                        child: Image.asset(
                                          "assets/mgif_7.gif",
                                          fit: BoxFit.contain,
                                        ),
                                      ),
                                    ),
                                  );
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
                        child: const Scrollbar(
                          child: SingleChildScrollView(
                            child: Padding(
                              padding: EdgeInsets.all(8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  SizedBox(height: 5),
                                  Text(
                                    "ท่าไก่เลียบเล้า มีลักษณะเด่น คือ ผู้แสดงจะย่อขาที่ยืนอยู่ให้สูงขึ้นในระดับเอว เปลี่ยนขาที่ใช้เท้ากระทุ้งพื้นเป็นยืนขาเดียว แขนทั้งสองยกขึ้นร่ายรำไปมาแบบ “นาคีม้วนหาง” แล้วเกร็งท่อนแขนข้างหนึ่ง ยกขึ้นตั้งฉากกับล าตัวตั้งศอกไว้ที่เข่า แขนอีกข้างหนึ่งกางศอกกำมือตั้งอยู่ที่บั้นเอว แล้วขยับลำตัวและเหยาะย่างอย่างมีจังหวะ แล้วยืนทรงตัวด้วยขาข้างเดียว ยืดตัวตรงอย่างสง่าผ่าเผย ส่วนแขนทั้งสองข้างก็ร่ายรำไป แล้วม้วนข้อมือยกสูงขึ้น ๆ จนสุดแขนในรูปตัว วี และเงยหน้ามองตามมือขึ้นไป แล้วตวัดแขนเหวี่ยงข้ามศีรษะย่อเข่าลง และหมุนตัวกลับขยับลำตัวเหยาะย่างอย่างมีจังหวะ ทำเหมือนครั้งแรก แต่คนละข้างไป ทำกี่รอบก็ได้แล้วแต่พละกำลังของผู้แสดง",
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
      endDrawer: const MyDrawer(),
    );
  }
}
