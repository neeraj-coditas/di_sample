import 'package:flutter/material.dart';

class AppService {
  AppService() {
    debugPrint('App Service Singleton instance is being created');
  }
  String execute() {
    DateTime now = DateTime.now();
    DateTime date = DateTime(now.year, now.month, now.day);

    return date.toString();
  }
}
