// ignore_for_file: camel_case_types, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:waste_collector/constants.dart';

class customer extends StatelessWidget {
  const customer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Stack(
        children: [
          Padding(
              padding: EdgeInsets.fromLTRB(15, 50, 15, 0),
              child: Container(
                height: 200,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/photos/customer1.png'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(15)),
              )),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 270, 15, 0),
            child: Text('أهلاً وسهلاً بك ..',
                style: TextStyle(
                  fontFamily: 'El Messiri',
                  fontSize: 30,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  //
                )),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 350, 15, 0),
            child: Text('من نحن ؟',
                style: TextStyle(
                  fontFamily: 'El Messiri',
                  fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  //
                )),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 380, 15, 0),
            child: SizedBox(
              width: 500,
              child: Text(
                "تعاني مدينة نابلس من مشكلة تراكم النفايات بشكل كبير خاصة في المناطق التجارية والصناعية كونها أحد أهم المراكز على المستوى الاقليمي في الضفة الغربية، تم انشاء هذا التطبيق لتنظيم عملية جمع النفايات لتصبح أسرع وأسهل وأكثر سلاسة ما يخفف تراكم النفايات وينعكس ايجابا على مظهر المدينة.",
                maxLines: 7,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontFamily: 'El Messiri',
                  fontSize: 18,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  //
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 650, 15, 0),
            child: Text('آلية عمل التطبيق:',
                style: TextStyle(
                  fontFamily: 'El Messiri',
                  fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  //
                )),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 700, 15, 0),
            child: SizedBox(
              width: 500,
              child: Text(
                "للموظف - يقوم التطبيق باختيار أقصر مسار لسير مركبة جمع النفايات بناءا على أولوية المنطقة للجمع حسب استخدام المنطقة والكثافة السكانية فيها وكمية النفايات التي تنتج منها، بالاضافة الى وقت الجمع حسب الأزمة المرورية و وقت الذروة وذلك للوصول الى مدينة نظيفة توفر نظام كفؤ لجمع النفايات.",
                maxLines: 7,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontFamily: 'El Messiri',
                  fontSize: 18,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  //
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 920, 15, 0),
            child: SizedBox(
              width: 500,
              child: Text(
                "للمواطن - يستطيع المواطن تتبع مسار شاحنات المهملات مما يمكنه من تحديد الوقت الذي تمر به الشاحنة من المنطقة المتواجد فيها والتخلص من المهملات في هذا الوقت وهذا يوفر من عدد عمليات الجمع التي تقوم بها البلدية للمنطقة الواحدة مما يقلل التكاليف المترتبة عليها.",
                maxLines: 7,
                textAlign: TextAlign.justify,
                style: TextStyle(
                  fontFamily: 'El Messiri',
                  fontSize: 18,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  //
                ),
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(15, 1200, 15, 0),
            child: Text('تواصل معنا',
                style: TextStyle(
                  fontFamily: 'El Messiri',
                  fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  //
                )),
          ),
          Padding(
            padding: EdgeInsets.only(top: 1250),
            child: Column(
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: box, borderRadius: BorderRadius.circular(15)),
                    width: 350,
                    height: 70,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 5,
                        ),
                        Image.asset(
                          'assets/photos/location.png',
                          height: 35,
                          width: 35,
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Text('نابلس - دوار الحسين - المجمع الطابق الثامن',
                            style: TextStyle(
                              fontFamily: 'El Messiri',
                              fontSize: 15,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              //
                            )),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 1340),
            child: Column(
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: box, borderRadius: BorderRadius.circular(15)),
                    width: 350,
                    height: 70,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'assets/photos/email.png',
                          height: 35,
                          width: 35,
                        ),
                        SizedBox(
                          width: 50,
                        ),
                        Text('roaa.barq@gmail.com',
                            style: TextStyle(
                              fontFamily: 'El Messiri',
                              fontSize: 20,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              //
                            )),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 1430),
            child: Column(
              children: [
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: box, borderRadius: BorderRadius.circular(15)),
                    width: 350,
                    height: 70,
                    child: Row(
                      children: [
                        SizedBox(
                          width: 10,
                        ),
                        Image.asset(
                          'assets/photos/phone.png',
                          height: 35,
                          width: 35,
                        ),
                        SizedBox(
                          width: 65,
                        ),
                        Text('970-569569044+',
                            style: TextStyle(
                              fontFamily: 'El Messiri',
                              fontSize: 20,
                              color: Colors.black,
                              decoration: TextDecoration.none,
                              //
                            )),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(top: 1550),
              child: Container(
                color: greenDark,
                height: 170,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  children: [
                    SizedBox(
                      height: 20,
                    ),
                    Text('دربك أقرب',
                        style: TextStyle(
                          fontFamily: 'El Messiri',
                          fontSize: 30,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          //
                        )),
                    Text('جامع النفايات الصلبة الذكي',
                        style: TextStyle(
                          fontFamily: 'El Messiri',
                          fontSize: 20,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          //
                        )),
                    SizedBox(
                      height: 15,
                    ),
                    Text(
                        'Copyright 2022 Roaa Barq, Dalia Omar All rights reserved',
                        style: TextStyle(
                          fontFamily: 'Yanone Kaffeesatz',
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white,
                          decoration: TextDecoration.none,
                          //
                        )),
                  ],
                ),
                // width: MediaQuery.of(context).size.width,
              )),
        ],
      )),
    );
  }
}
