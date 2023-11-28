import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:minha_cidade/core/config_reader.dart';
import 'package:minha_cidade/injection.dart';
import 'package:minha_cidade/presentation/app_widget.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await ConfigReader.initialize();
  await GetStorage.init();
  await configureDependencies();

  runApp(AppWidget());
}
