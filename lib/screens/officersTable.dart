// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, deprecated_member_use, file_names, implementation_imports, camel_case_types

import 'package:flutter/material.dart';
import 'package:waste_collector/constants.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

class officer extends StatelessWidget {
  const officer({Key? key}) : super(key: key);

  static const String _title = 'قائمة الموظفين';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: [
        //  AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [Locale("ar", "AE")],
      locale: Locale("ar", "AE"),
      title: _title,
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
              child: Text(
            _title,
            style: TextStyle(
              fontFamily: 'El Messiri',
              fontSize: 30,
              color: Colors.white,
            ),
          )),
          // backgroundColor: greenDark,
          flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
            begin: Alignment.centerRight,
            end: Alignment.centerLeft,
            colors: [
              greenLight,
              greenDark,
            ],
          ))),
          toolbarHeight: 60,
        ),
        body: const Center(
          child: MyStatefulWidget(),
        ),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: ListView(
        shrinkWrap: true,
        children: [
          SizedBox(
            height: 20,
          ),
          Padding(
              padding: EdgeInsets.all(6),
              child: FlatButton(
                onPressed: () {
                  showModalBottomSheet(
                    context: context,
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    builder: (context) => DraggableScrollableSheet(
                      initialChildSize: 0.64,
                      minChildSize: 0.2,
                      maxChildSize: 1,
                      builder: (context, scrollController) {
                        return Container(
                            decoration: BoxDecoration(
                                color: greenDark,
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(20),
                                    topRight: Radius.circular(20))),
                            child: Padding(
                              padding: EdgeInsets.all(20),
                              child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(15))),
                                  child: Stack(
                                    children: [
                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              30, 40, 30, 0),
                                          child: Row(children: <Widget>[
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  1.35,
                                              child: TextField(
                                                  cursorColor: Colors.black,
                                                  obscureText: true,
                                                  textAlign: TextAlign.right,
                                                  decoration: ThemeHelper()
                                                      .textInputDecoration(
                                                          Icons.perm_identity,
                                                          "الإسم",
                                                          "أدخل الإسم الرباعي الخاص بك ..")),
                                            ),
                                          ])),
                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              30, 100, 30, 0),
                                          child: Row(children: <Widget>[
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  1.35,
                                              child: TextField(
                                                  cursorColor: Colors.black,
                                                  obscureText: true,
                                                  textAlign: TextAlign.right,
                                                  decoration: ThemeHelper()
                                                      .textInputDecoration(
                                                          Icons.phone_android,
                                                          "رقم الهاتف",
                                                          "أدخل رقم الهاتف الخاص بك ..")),
                                            )
                                          ])),
                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              30, 160, 30, 0),
                                          child: Row(children: <Widget>[
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  1.35,
                                              child: TextField(
                                                  cursorColor: Colors.black,
                                                  obscureText: true,
                                                  textAlign: TextAlign.right,
                                                  decoration: ThemeHelper()
                                                      .textInputDecoration(
                                                          Icons.perm_identity,
                                                          "رقم الهوية",
                                                          "أدخل رقم الهوية الخاص بك ..")),
                                            )
                                          ])),
                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              30, 220, 30, 0),
                                          child: Row(children: <Widget>[
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  1.35,
                                              child: TextField(
                                                  cursorColor: Colors.black,
                                                  obscureText: true,
                                                  textAlign: TextAlign.right,
                                                  decoration: InputDecoration(
                                                      labelText: 'كلمة المرور',
                                                      hintText:
                                                          'أدخل كلمة المرور الخاصة بك ..',
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
                                                        fontFamily:
                                                            'El Messiri',
                                                        fontSize: 20,
                                                        color: Colors.black,
                                                      ),
                                                      contentPadding:
                                                          EdgeInsets.fromLTRB(
                                                              20, 10, 20, 10),
                                                      focusedBorder: OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  10),
                                                          borderSide: BorderSide(
                                                              color: Colors
                                                                  .black)),
                                                      enabledBorder: OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius.circular(
                                                                  10),
                                                          borderSide:
                                                              BorderSide(
                                                                  color: Colors
                                                                      .black)),
                                                      errorBorder: OutlineInputBorder(
                                                          borderRadius:
                                                              BorderRadius.circular(10),
                                                          borderSide: BorderSide(color: Colors.red, width: 2.0)),
                                                      focusedErrorBorder: OutlineInputBorder(borderRadius: BorderRadius.circular(10), borderSide: BorderSide(color: Colors.red, width: 2.0)))),
                                            )
                                          ])),
                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              55, 290, 55, 0),
                                          child: Row(children: <Widget>[
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  1.7,
                                              child: FlatButton(
                                                  onPressed: () {},
                                                  textColor: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15)),
                                                  child: Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      height: 50,
                                                      decoration: BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            begin: Alignment
                                                                .centerRight,
                                                            end: Alignment
                                                                .centerLeft,
                                                            colors: [
                                                              greenLight,
                                                              greenDark,
                                                            ],
                                                          ),
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          15))),
                                                      child: Center(
                                                        child: Text(
                                                          'تعديل المعلومات',
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'El Messiri',
                                                            fontSize: 18,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ))),
                                            )
                                          ])),
                                      Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              55, 350, 55, 0),
                                          child: Row(children: <Widget>[
                                            SizedBox(
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  1.7,
                                              child: FlatButton(
                                                  onPressed: () {},
                                                  textColor: Colors.white,
                                                  shape: RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              15)),
                                                  child: Container(
                                                      width:
                                                          MediaQuery.of(context)
                                                              .size
                                                              .width,
                                                      height: 50,
                                                      decoration: BoxDecoration(
                                                          gradient:
                                                              LinearGradient(
                                                            begin: Alignment
                                                                .centerRight,
                                                            end: Alignment
                                                                .centerLeft,
                                                            colors: [
                                                              greenLight,
                                                              greenDark,
                                                            ],
                                                          ),
                                                          borderRadius:
                                                              BorderRadius.all(
                                                                  Radius
                                                                      .circular(
                                                                          15))),
                                                      child: Center(
                                                        child: Text(
                                                          'حذف الموظف',
                                                          style: TextStyle(
                                                            fontFamily:
                                                                'El Messiri',
                                                            fontSize: 18,
                                                            color: Colors.white,
                                                          ),
                                                        ),
                                                      ))),
                                            )
                                          ])),
                                    ],
                                  )),
                            ));
                      },
                    ),
                  );
                },
                child: Container(
                    height: 50,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: greenDark, width: 2)),
                    child: Center(
                      child: Text(
                        'رؤى جمال برق',
                        style: TextStyle(
                          fontFamily: 'El Messiri',
                          fontSize: 22,
                          color: Colors.black,
                        ),
                      ),
                    )),
              )),
        ],
      )),
    );
  }
}
