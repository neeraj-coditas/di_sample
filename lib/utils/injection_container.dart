import 'package:di_sample/utils/service.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

final locator = GetIt.instance;

void setup() {
  debugPrint('setup is called');
  locator.registerSingleton(
    AppService(),
  );
}
