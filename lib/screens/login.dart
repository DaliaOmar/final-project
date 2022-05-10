// ignore_for_file: camel_case_types, prefer_const_constructors, deprecated_member_use, prefer_const_literals_to_create_immutables, must_be_immutable, unused_element

import 'package:flutter/material.dart';
import 'package:waste_collector/constants.dart';
import 'package:waste_collector/screens/signup.dart';

import 'customerNav.dart';

class login extends StatefulWidget {
  const login({Key? key}) : super(key: key);

  @override
  State<login> createState() => _LoginState();
}

class _LoginState extends State<login> {
  late bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  decoration: BoxDecoration(color: Colors.white),
                ),
                Positioned(
                  top: -180,
                  left: -200,
                  child: Image.asset(
                    'assets/photos/circleBig.png',
                    height: MediaQuery.of(context).size.height * 0.8,
                  ),
                ),
                Positioned(
                  top: -50,
                  left: 10,
                  child: Image.asset(
                    'assets/photos/border.png',
                    height: MediaQuery.of(context).size.height * 0.5,
                  ),
                ),
                Positioned(
                  top: -30,
                  left: -30,
                  child: Image.asset(
                    'assets/photos/circlemed.png',
                    height: MediaQuery.of(context).size.height * 0.15,
                  ),
                ),
                Positioned(
                  top: 200,
                  left: 5,
                  child: Image.asset(
                    'assets/photos/circleSmall.png',
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 250,
                  child: Image.asset(
                    'assets/photos/circleSmaller.png',
                    height: MediaQuery.of(context).size.height * 0.05,
                  ),
                ),
                Positioned(
                    top: 120,
                    left: 50,
                    child: Text(
                      'تسجيل الدخول',
                      style: TextStyle(
                        fontFamily: 'El Messiri',
                        fontSize: 40,
                        color: Colors.white,
                      ),
                    ))
              ],
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Row(children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.2,
                    child: TextField(
                        cursorColor: Colors.black,
                        textAlign: TextAlign.right,
                        decoration: ThemeHelper().textInputDecoration(
                            Icons.perm_identity,
                            "رقم الهوية",
                            "أدخل رقم الهوية الخاص بك ..")),
                  )
                ])),
            SizedBox(
              height: 10,
            ),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
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
                            suffixIcon: IconButton(
                                color: Colors.black,
                                icon: Icon(
                                  _isObscure
                                      ? Icons.visibility_off
                                      : Icons.remove_red_eye,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                }),
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
                                borderSide: BorderSide(
                                    color: Colors.red, width: 2.0)))),
                  )
                ])),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 50),
                child: Container(
                    alignment: Alignment.centerLeft,
                    child: Row(children: <Widget>[
                      SizedBox(
                        width: MediaQuery.of(context).size.width / 1.4,
                        child: FlatButton(
                            onPressed: () {},
                            child: Text(
                              'هل نسيت كلمة المرور ؟',
                              style: TextStyle(
                                fontFamily: 'El Messiri',
                                fontSize: 16,
                                color: Colors.black,
                              ),
                            )),
                      )
                    ]))),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 65),
                child: Row(children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.5,
                    child: FlatButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => customerNav()));
                        },
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
                                'تسجيل الدخول',
                                style: TextStyle(
                                  fontFamily: 'El Messiri',
                                  fontSize: 22,
                                  color: Colors.white,
                                ),
                              ),
                            ))),
                  )
                ])),
            Padding(
                padding: const EdgeInsets.symmetric(horizontal: 55),
                child: Row(children: <Widget>[
                  SizedBox(
                    width: MediaQuery.of(context).size.width / 1.4,
                    child: FlatButton(
                        onPressed: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => Signup()));
                        },
                        child: Text(
                          'لا تمتلك حساب ؟ إنشاء حساب جديد',
                          style: TextStyle(
                            fontFamily: 'El Messiri',
                            fontSize: 16,
                            color: Colors.black,
                          ),
                        )),
                  )
                ]))
          ],
        ));
  }
}

@override
Widget build(BuildContext context) {
  // ignore: todo
  // TODO: implement build
  throw UnimplementedError();
}
