// ignore_for_file: prefer_const_constructors, camel_case_types, unused_import, unused_import, deprecated_member_use, prefer_const_literals_to_create_immutables, file_names, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:waste_collector/constants.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:waste_collector/screens/admin.dart';
import 'package:waste_collector/screens/adminNav.dart';

class change extends StatelessWidget {
  const change({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          Positioned(
              top: -450,
              right: -80,
              child: Image(
                image: AssetImage('assets/photos/change.png'),
                height: MediaQuery.of(context).size.height * 1.4,
                width: MediaQuery.of(context).size.width * 1.4,
              )),
          Positioned(
            top: 60,
            right: 40,
            child: Text(
              'تعديل سعة حاوية',
              style: TextStyle(
                fontFamily: 'El Messiri',
                fontSize: 40,
                color: Colors.white,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 25, 320, 0),
            child: FlatButton(
                height: 40,
                minWidth: 40,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => adminNav()),
                  );
                },
                child: Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    color: greenDark,
                    borderRadius: BorderRadius.circular(30),
                  ),
                  child: Icon(
                    Icons.home_filled,
                    color: Colors.white,
                    size: 30,
                  ),
                )),
          ),
          Padding(
              padding: EdgeInsets.only(top: 250),
              child: CarouselSlider(
                  items: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage('assets/photos/basket.png'),
                            fit: BoxFit.cover,
                          )),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: AssetImage('assets/photos/basketBig.png'),
                            fit: BoxFit.cover,
                          )),
                    )
                  ],
                  options: CarouselOptions(
                    height: 250,
                    aspectRatio: 16 / 9,
                    viewportFraction: 0.8,
                    initialPage: 0,
                    enableInfiniteScroll: true,
                    reverse: false,
                    enlargeCenterPage: true,
                    // onPageChanged: callbackFunction,
                    scrollDirection: Axis.horizontal,
                  ))),
          Center(
            child: Padding(
                padding: const EdgeInsets.fromLTRB(0, 450, 0, 0),
                child: SizedBox(
                  width: MediaQuery.of(context).size.width / 1.4,
                  child: FlatButton(
                      onPressed: () {},
                      textColor: Colors.white,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30)),
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 60,
                          decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.centerRight,
                                end: Alignment.centerLeft,
                                colors: [
                                  greenLight,
                                  greenDark,
                                ],
                              ),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: Center(
                            child: Text(
                              'تعديل السعة',
                              style: TextStyle(
                                fontFamily: 'El Messiri',
                                fontSize: 22,
                                color: Colors.white,
                              ),
                            ),
                          ))),
                )),
          )
        ],
      ),
    );
  }
}
