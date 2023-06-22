import 'package:flutter/material.dart';
import 'package:quizzly/controllers/lang_controller.dart';
import 'package:quizzly/run_app.dart';

void main() async{
  await LangController.initialLang();
  runApp(const RunApp());

}
