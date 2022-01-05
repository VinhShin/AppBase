import 'package:flutter/material.dart';

class AppConfig extends InheritedWidget {
  final String appDisplayName;
  final int appInternalId;

  AppConfig(
      {required this.appDisplayName,
      required this.appInternalId,
      required Widget child})
      : super(child: child);

  static AppConfig? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<AppConfig>();
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}
