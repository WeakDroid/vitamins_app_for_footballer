import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:vitamins_app_for_footballer/data/local/models/supplement_local.dart';
import 'package:vitamins_app_for_footballer/ui/common/bottom_menu/cubit/bottom_navigation_cubit.dart';
import 'application/application.dart';
import 'di/locator.dart';

Future<void> main() async {
  await init();
  runApp(
    const VitaminsApp(),
  );
}

init() async {
  setupLocator();
  await _setupHive();
}

_setupHive() async {
  await Hive.initFlutter();
  Hive.registerAdapter(SupplementLocalAdapter());
}
