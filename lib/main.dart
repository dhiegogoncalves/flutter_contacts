import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_contacts/android/android.app.dart';
import 'package:flutter_contacts/ios/ios.app.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isIOS) {
    runApp(IOSApp());
  } else {
    runApp(AndroidApp());
  }
}
