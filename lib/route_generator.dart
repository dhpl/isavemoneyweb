import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:save_money_web/screens/home_ai_screen/home_ai_screen.dart';
import 'package:save_money_web/screens/home_blackpink_screen/home_blackpink_screen.dart';

class RouteGenerator {
  /// MARK: - Initials;
  static const String init = '/';
  static const String homeScreen = '/homeScreen';
  static const String homeBlackpinkScreen = '/blackpink';
  static const String homeAIGirls = '/aigirls';

  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(
          builder: (context) => HomeAiScreen.provider(),
          settings: settings,
        );
      case homeScreen:
        return MaterialPageRoute(
          builder: (context) => HomeAiScreen.provider(),
          settings: settings,
        );
      case homeBlackpinkScreen:
        return MaterialPageRoute(
          builder: (context) => HomeAiScreen.provider(),
          settings: settings,
        );
      case homeAIGirls:
        return MaterialPageRoute(
          builder: (context) => HomeAiScreen.provider(),
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
