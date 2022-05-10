// ignore_for_file: file_names, camel_case_types, prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:waste_collector/constants.dart';

class add extends StatelessWidget {
  const add({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(70, 60, 70, 0),
          child: Text('إضافة موظف جديد',
              style: TextStyle(
                fontFamily: 'El Messiri',
                fontSize: 30,
                color: Colors.black,
              )),
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 30, 0, 0),
          child: Image(
            image: AssetImage("assets/photos/add.png"),
            height: 400,
            width: 400,
          ),
        ),
        Padding(
            padding: const EdgeInsets.fromLTRB(30, 370, 30, 0),
            child: Row(children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.2,
                child: TextField(
                    cursorColor: Colors.black,
                    obscureText: true,
                    textAlign: TextAlign.right,
                    decoration: ThemeHelper().textInputDecoration(
                        Icons.perm_identity,
                        "الإسم",
                        "أدخل الإسم الرباعي الخاص بك ..")),
              ),
            ])),
        Padding(
            padding: const EdgeInsets.fromLTRB(30, 430, 30, 0),
            child: Row(children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.2,
                child: TextField(
                    cursorColor: Colors.black,
                    obscureText: true,
                    textAlign: TextAlign.right,
                    decoration: ThemeHelper().textInputDecoration(
                        Icons.phone_android,
                        "رقم الهاتف",
                        "أدخل رقم الهاتف الخاص بك ..")),
              )
            ])),
        Padding(
            padding: const EdgeInsets.fromLTRB(30, 490, 30, 0),
            child: Row(children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.2,
                child: TextField(
                    cursorColor: Colors.black,
                    obscureText: true,
                    textAlign: TextAlign.right,
                    decoration: ThemeHelper().textInputDecoration(
                        Icons.perm_identity,
                        "رقم الهوية",
                        "أدخل رقم الهوية الخاص بك ..")),
              )
            ])),
        Padding(
            padding: const EdgeInsets.fromLTRB(30, 550, 30, 0),
            child: Row(children: <Widget>[
              SizedBox(
                width: MediaQuery.of(context).size.width / 1.2,
                child: TextField(
                    cursorColor: Colors.black,
                    obscureText: true,
                    textAlign: TextAlign.right,
                    decoration: InputDecoration(
                        labelText: 'كلمة المرور',
                        hintText: 'أدخل كلمة المرور الخاصة بك ..',
                        suffixIcon: Icon(
                          Icons.remove_red_eye,
                          color: Colors.black,
                        ),
                        prefixIcon: Icon(
                          Icons.lock,
                          color: Colors.black,
                        ),
                        fillColor: Colors.white,
                        filled: true,
                        labelStyle: TextStyle(
                          fontFamily: 'El Messiri',
                          fontSize: 20,
                          color: Colors.black,
                        ),
                        contentPadding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.black)),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide(color: Colors.black)),
                        errorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Colors.red, width: 2.0)),
                        focusedErrorBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide:
                                BorderSide(color: Colors.red, width: 2.0)))),
              )
            ])),
        Padding(
            padding: const EdgeInsets.fromLTRB(55, 610, 55, 0),
            child: Row(children: <Widget>[
              SizedBox(
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
                            'إضافة موظف',
                            style: TextStyle(
                              fontFamily: 'El Messiri',
                              fontSize: 22,
                              color: Colors.white,
                            ),
                          ),
                        ))),
              )
            ])),
      ]),
    );
  }
}
