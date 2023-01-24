import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:save_money_web/screens/home_screen/home_screen.dart';

class RouteGenerator {
  /// MARK: - Initials;
  static const String init = '/';
  static const String homeScreen = '/homeScreen';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => HomeScreen.provider(),
          settings: settings,
        );
      case homeScreen:
        return MaterialPageRoute(
          builder: (context) => HomeScreen.provider(),
          settings: settings,
        );
      default:
        return _errorRoute();
    }
  }

  static Route<dynamic> _errorRoute() {
    return MaterialPageRoute(builder: (context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('error'.tr),
          centerTitle: true,
        ),
        body: Center(
          child: Text('page_not_found'.tr),
        ),
      );
    });
  }
}
