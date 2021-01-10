import 'package:flutter/material.dart';
import 'package:flutter_contacts/android/styles.dart';
import 'package:flutter_contacts/android/views/splash.view.dart';

class AndroidApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Contacts',
      debugShowCheckedModeBanner: false,
      theme: androidTheme(),
      home: SplashView(),
    );
  }
}
