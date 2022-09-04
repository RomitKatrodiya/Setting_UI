import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:settings_ui_app/screens/cupertino_setting_page.dart';
import 'package:settings_ui_app/screens/setting_page.dart';

void main() {
  runApp(
    Platform.isAndroid
        ? const MaterialApp(
            debugShowCheckedModeBanner: false,
            home: SettingsPage(),
          )
        : const CupertinoApp(
            debugShowCheckedModeBanner: false,
            home: CupertinoSettingPage(),
          ),
  );
}
