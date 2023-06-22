import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

class LangController {
  static Future<void> initialLang() async {
    await Hive.initFlutter();
    await Hive.openBox("settings");
  }
  static Box langBox = Hive.box("settings");
  static ValueNotifier<String> currentLang = ValueNotifier(langBox.get("currentLang", defaultValue: "uz"));

}