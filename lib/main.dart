import 'package:flutter/material.dart';
import 'package:minha_cidade/core/config_reader.dart';
import 'package:minha_cidade/injection.dart';
import 'package:minha_cidade/presentation/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();

  await ConfigReader.initialize();

  runApp(AppWidget());
}
