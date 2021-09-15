import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:get/get.dart';
import 'package:test_carshering/screens/main_screen.dart';

void main() {
  runApp(
    MyApp(),
  );
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: 'main_page',
      routes: {
        'main_page': (context) => MainScreen(),
      },
      localizationsDelegates: [GlobalMaterialLocalizations.delegate],
      supportedLocales: [
        const Locale('en'),
        const Locale('ru'),
      ],
      theme: ThemeData(
        primaryColor: Color(0xFF888888),
        accentColor: Color(0xFFDC6917),
      ),
      home: MainScreen(),
    );
  }
}
