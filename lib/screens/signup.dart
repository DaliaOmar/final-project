// ignore_for_file: deprecated_member_use, prefer_const_constructors, prefer_const_literals_to_create_immutables, non_constant_identifier_names, must_be_immutable, unused_local_variable, use_key_in_widget_constructors, avoid_web_libraries_in_flutter, unused_import, avoid_print, unused_element, unnecessary_new, override_on_non_overriding_member, unused_field, import_of_legacy_library_into_null_safe, prefer_final_fields, unnecessary_import, curly_braces_in_flow_control_structures

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:waste_collector/constants.dart';
import 'package:waste_collector/screens/customer.dart';
import 'package:http/http.dart' as http;
import 'login.dart';
import 'user.dart';

//import 'package:fluttertoast/fluttertoast.dart';
class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();

  final _formKey = GlobalKey<FormState>();
 
  late String _passwordError = ' ';
  late String _re_passwordError = ' ';

  late String errormsg;
  late bool error = false;
  bool _isObscure = true;
 /* Future save() async {
    var res = await http.post("http://localhost:8080/signup",
        headers: <String, String>{
          'Context-Type': 'application/json;charSet=UTF-8'
        },
        body: <String, String>{
          'name': user.name,
          'phone': user.phone,
          'id': user.id,
          'password': user.password,
          'repassword': user.repassword
        });
    print(res.body);
    Navigator.push(
        context, new MaterialPageRoute(builder: (context) => login()));
  }*/

  User user = User('', '', '', '', '');
  @override
  Widget build(BuildContext context) {
    
    return Directionality(
        textDirection: TextDirection.rtl,
        child: Scaffold(
          backgroundColor: greenDark,
          body: ListView(
            children: <Widget>[
              Center(
                  child: Padding(
                      padding: const EdgeInsets.only(top: 70),
                      child: Text('إنشاء حساب جديد',
                          style: TextStyle(
                            fontFamily: 'El Messiri',
                            fontSize: 35,
                            color: Colors.white,
                            decoration: TextDecoration.none,
                          )))),
              Stack(
                
            key: _formKey,
                children: <Widget>[
                  Padding(
                      padding: const EdgeInsets.fromLTRB(20, 40, 20, 0),
                      child: Container(
                        height: MediaQuery.of(context).size.height / 1.4,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(30)),
                      )),
                  Positioned(
                    top: -250,
                    right: -150,
                    child: Image.asset(
                      'assets/photos/border.png',
                      height: MediaQuery.of(context).size.height * 0.5,
                    ),
                  ),

           
                  Padding(
                      padding: const EdgeInsets.fromLTRB(30, 150, 30, 0),
                      child: Row(children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.4,
                          child: TextFormField(
                             controller: TextEditingController(text: user.name),
                    onChanged: (value) {
                      user.name = value;
                    },
         
                       validator: (  value) {
                  if (value!.isNotEmpty) {
                    return 'Please enter some text';
                  }
                  return 'Please enter some text';
                },
                  
                            cursorColor: Colors.black,
                            keyboardType: TextInputType.name,
                            textAlign: TextAlign.right,
                            decoration: ThemeHelper().textInputDecoration(
                                Icons.perm_identity,
                                "الإسم",
                                "أدخل الإسم الرباعي الخاص بك .."),
                          ),
                        ),
                        SizedBox(width: 50, child: Icon(Icons.mic))
                      ])),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(30, 210, 30, 0),
                      child: Row(children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.4,
                          child: TextField(
                                  controller: TextEditingController(text: user.phone),
                    onChanged: (value) {
                      user.phone = value;
                    },
                  
                              cursorColor: Colors.black,
                              textAlign: TextAlign.right,
                              keyboardType: TextInputType.number,
                              decoration: ThemeHelper().textInputDecoration(
                                  Icons.phone_android,
                                  "رقم الهاتف",
                                  "أدخل رقم الهاتف الخاص بك ..")),
                        ),
                        SizedBox(width: 50, child: Icon(Icons.mic))
                      ])),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(30, 270, 30, 0),
                      child: Row(children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.4,
                          child: TextField(
                              controller: TextEditingController(text: user.id),
                    onChanged: (value) {
                      user.id = value;
                    },
                              cursorColor: Colors.black,
                              textAlign: TextAlign.right,
                              keyboardType: TextInputType.number,
                              decoration: ThemeHelper().textInputDecoration(
                                  Icons.perm_identity,
                                  "رقم الهوية",
                                  "أدخل رقم الهوية الخاص بك ..")),
                        ),
                        SizedBox(width: 50, child: Icon(Icons.mic))
                      ])),
                  SizedBox(
                    height: 16,
                  ),
                  //  Form(
                  //  key: _formKey,
                  //  child: Column(
                  //  children: [
                  Padding(
                      padding: const EdgeInsets.fromLTRB(30, 330, 30, 0),
                      child: Row(children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.4,
                          child: TextField(
                              controller: TextEditingController(text: user.password),
                    onChanged: (value) {
                      user.password = value;
                    },
                              cursorColor: Colors.black,
                              obscureText: _isObscure,
                              textAlign: TextAlign.right,
                              decoration: InputDecoration(
                                  labelText: 'كلمة المرور',
                                  hintText: 'أدخل كلمة المرور الخاصة بك ..',
                                  // errorText: _passwordError,
                                  suffixIcon: IconButton(
                                      color: Colors.black,
                                      icon: Icon(_isObscure
                                          ? Icons.visibility_off
                                          : Icons.remove_red_eye),
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
                                  contentPadding:
                                      EdgeInsets.fromLTRB(20, 10, 20, 10),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          BorderSide(color: Colors.black)),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          BorderSide(color: Colors.black)),
                                  errorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                          color: Colors.red, width: 2.0)),
                                  focusedErrorBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide: BorderSide(
                                          color: Colors.red, width: 2.0)))),
                        ),
                        SizedBox(width: 50, child: Icon(Icons.mic))
                      ])),
                  //  ],
                  //  )
                  //),
                  SizedBox(
                    height: 16,
                  ),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(30, 390, 30, 0),
                      child: Row(children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.4,
                          child: TextField(
                                controller: TextEditingController(text: user.repassword),
                    onChanged: (value) {
                      user.repassword = value;
                    },
                              obscureText: _isObscure,
                              cursorColor: Colors.black,
                              textAlign: TextAlign.right,
                              decoration: InputDecoration(
                                  errorText: _re_passwordError,
                                  labelText: 'تأكيد كلمة المرور',
                                  hintText:
                                      'أعد كتابة كلمة المرور الخاصة بك ..',
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
                                  contentPadding:
                                      EdgeInsets.fromLTRB(20, 10, 20, 10),
                                  focusedBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          BorderSide(color: Colors.black)),
                                  enabledBorder: OutlineInputBorder(
                                      borderRadius: BorderRadius.circular(10),
                                      borderSide:
                                          BorderSide(color: Colors.black)),
                                  errorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    /* borderSide: BorderSide(
                                          color: Colors.red, width: 2.0)*/
                                  ),
                                  focusedErrorBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10),
                                    /*  borderSide: BorderSide(
                                          color: Colors.red, width: 2.0)*/
                                  ))),
                        ),
                        SizedBox(width: 50, child: Icon(Icons.mic))
                      ])),

                  Padding(
                      padding: const EdgeInsets.fromLTRB(30, 470, 30, 0),
                      child: Row(children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.4,
                          child: FlatButton(
                              onPressed: () {
                                  if (!(_formKey.currentState!.validate())) {
                           // save();
                          } else {
                            print("not ok");
                          }
                       /*
                                print("Password : " + _pass.text);
                                setState(() {
                                  //    print("Form Validation : " + _formKey.currentState.validate().toString());

                                  if (_user_name.text.isEmpty ||
                                      _user_name.text.length < 7) {
                                    _re_passwordError =
                                        " أدخل اسم المستخدم بشكل صحيح .";
                                  } else if (_phone.text.isEmpty ||
                                      !RegExp(r'^[+]*[(]{0,1}[0-9]{1,4}[)]{0,1}[-\s\./0-9]*$')
                                          .hasMatch(_phone.text) ||
                                      _phone.text.length < 10 ||
                                      _phone.text.length > 10) {
                                    _re_passwordError =
                                        " تأكد من رقم الهاتف الذي أدخلته .";
                                  } else if (_id.text.isEmpty ||
                                      _id.text.length < 9 ||
                                      _id.text.length > 9) {
                                    _re_passwordError =
                                        " أدخل رقم الهوية بشكل صحيح .";
                                  } else if (_pass.text.isEmpty ||
                                      _pass.text.length < 3) {
                                    _re_passwordError =
                                        "يجب أن تكون كلمة السر على الأقل ثلاث حروف";
                                  } else if ((_re_pass.text.isNotEmpty) ||
                                      _re_pass.text == _pass.text) {
                                    showAlert(context);
                                  } else if (_re_pass.text != _pass.text) {
                                    _re_passwordError =
                                        "يجب أن تكون كلمة السر متطابقة ";
                                  } else {
                                    _re_passwordError = " ";
                                  }
                                });*/
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
                                      borderRadius: BorderRadius.all(
                                          Radius.circular(30))),
                                  child: Center(
                                    child: Text(
                                      'إنشاء حساب',
                                      style: TextStyle(
                                        fontFamily: 'El Messiri',
                                        fontSize: 22,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ))),
                        ),
                        SizedBox(width: 50, child: Icon(Icons.mic))
                      ])),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(22, 525, 22, 0),
                      child: Row(children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.3,
                          child: FlatButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) => login()));
                              },
                              child: Text(
                                'هل تمتلك حساب ؟ تسجيل الدخول',
                                style: TextStyle(
                                  fontFamily: 'El Messiri',
                                  fontSize: 18,
                                  color: Colors.black,
                                ),
                              )),
                        ),
                        SizedBox(width: 1, child: Icon(Icons.mic))
                      ])),
                ],
              ),
            ],
          ),
        ));
  }
}

showAlert(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Row(children: [
          IconButton(
            icon: Icon(
              Icons.notifications_none,
              size: 25,
              color: Color.fromARGB(255, 21, 109, 24),
            ),
            onPressed: () {},
          ),
          Text(
            '  تأكيد إنشاء حسابك.',
            style: TextStyle(color: const Color.fromARGB(255, 21, 109, 24)),
          )
        ]),
        content: Text("تم انشاء حسابك بنجاح"),
        actions: <Widget>[
          FlatButton(
            child: Text(
              "تم",
              style: TextStyle(color: const Color.fromARGB(255, 21, 109, 24)),
            ),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => customer()));
            },
          ),
          /* FlatButton(
            child: Text(
              "إلغاء",
              style: TextStyle(color: Colors.red),
            ),
            onPressed: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Signup()));
           
            },
          ),*/
        ],
      );
    },
  );
}
