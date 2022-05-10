// ignore_for_file: prefer_const_constructors, unused_import, deprecated_member_use, camel_case_types

import 'package:flutter/material.dart';
import 'package:waste_collector/screens/adminNav.dart';

class admin extends StatelessWidget {
  const admin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/photos/admin.png"),
                    fit: BoxFit.cover)),
            child: Stack(
              children: [
                Padding(
                    padding: const EdgeInsets.fromLTRB(120, 100, 120, 0),
                    child: Text('المشرف',
                        style: TextStyle(
                          fontFamily: 'El Messiri',
                          fontSize: 40,
                          color: Colors.white,
                        ))),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 200, 20, 0),
                  child: FlatButton(
                      onPressed: () {},
                      textColor: Colors.white,
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: Center(
                            child: Text(
                              'اضافة موظف جديد',
                              style: TextStyle(
                                fontFamily: 'El Messiri',
                                fontSize: 22,
                                color: Colors.white,
                              ),
                            ),
                          ))),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 300, 20, 0),
                  child: FlatButton(
                      onPressed: () {},
                      textColor: Colors.white,
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: Center(
                            child: Text(
                              'اضافة حاوية جديدة',
                              style: TextStyle(
                                fontFamily: 'El Messiri',
                                fontSize: 22,
                                color: Colors.white,
                              ),
                            ),
                          ))),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 400, 20, 0),
                  child: FlatButton(
                      onPressed: () {},
                      textColor: Colors.white,
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: Center(
                            child: Text(
                              'تعديل سعة حاوية',
                              style: TextStyle(
                                fontFamily: 'El Messiri',
                                fontSize: 22,
                                color: Colors.white,
                              ),
                            ),
                          ))),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 500, 20, 0),
                  child: FlatButton(
                      onPressed: () {},
                      textColor: Colors.white,
                      child: Container(
                          width: MediaQuery.of(context).size.width,
                          height: 60,
                          decoration: BoxDecoration(
                              color: Colors.transparent,
                              border: Border.all(color: Colors.white),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(5))),
                          child: Center(
                            child: Text(
                              'قائمة الموظفين',
                              style: TextStyle(
                                fontFamily: 'El Messiri',
                                fontSize: 22,
                                color: Colors.white,
                              ),
                            ),
                          ))),
                ),
              ],
            )));
  }
}
