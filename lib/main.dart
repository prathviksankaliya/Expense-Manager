import 'package:expense_manager/app/core/storage/app_preference.dart';
import 'package:flutter/material.dart';
import 'app.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await AppPreference.instance.init();
  runApp(const MyApp());
}

