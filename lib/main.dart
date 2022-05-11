// ignore_for_file: unused_import, prefer_const_constructors

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:waste_collector/screens/addBasket.dart';
import 'package:waste_collector/screens/customer.dart';
import 'package:waste_collector/screens/customerNav.dart';

import 'package:waste_collector/screens/map.dart';
import 'package:waste_collector/screens/officerNav.dart';
import 'package:waste_collector/screens/officersTable.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:waste_collector/screens/splash.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'screens/addBasket.dart';
import 'screens/adminNav.dart';
import 'screens/usermap.dart';

late SharedPreferences prefs;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
    prefs = await SharedPreferences.getInstance();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      localizationsDelegates: [
        //    AppLocalizations.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: [Locale("ar", "AE")],
      locale: Locale("ar", "AE"),
      title: 'Welcome',
      //home: adminNav(),
     // home: splash(),
      // home:locationMap(),
        //home:map(),
        home: customerNav(),
    );
  }
}
