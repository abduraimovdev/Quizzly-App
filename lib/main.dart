import 'package:flutter/material.dart';
import 'package:quizzly_math/controllers/lang_controller.dart';
import 'package:quizzly_math/run_app.dart';

void main() async {
  await LangController.initialLang();
  runApp(const RunApp());
}
