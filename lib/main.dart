import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/route_manager.dart';
import 'package:save_money_web/generated/locales.g.dart';
import 'package:save_money_web/route_generator.dart';
import 'package:url_strategy/url_strategy.dart';

void main() {
  setPathUrlStrategy();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // title: 'iSaveMoney - Budget & Expenses',
      theme: ThemeData(
        primarySwatch: const MaterialColor(
          0xffff3378,
          {
            50: Color(0xffff3378),
            100: Color(0xffff3378),
            200: Color(0xffff3378),
            300: Color(0xffff3378),
            400: Color(0xffff3378),
            500: Color(0xffff3378),
            600: Color(0xffff3378),
            700: Color(0xffff3378),
            800: Color(0xffff3378),
            900: Color(0xffff3378),
          },
        ),
      ),
      locale: const Locale('en', 'US'), //Get.deviceLocale,
      translationsKeys: AppTranslation.translations,
      supportedLocales: const [Locale('en', 'US')],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      fallbackLocale: const Locale('en', 'US'),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: RouteGenerator.generateRoute,
      initialRoute: '/',
      navigatorKey: Get.key,
    );
  }
}
