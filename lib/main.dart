 import 'package:flutter/material.dart';
import 'package:projectothe/page.dart';
import 'package:easy_localization/easy_localization.dart';

 void main() {
   runApp(
     EasyLocalization(
         supportedLocales: [Locale('en', 'US'), Locale('bn', 'BD')],
         path: 'lang/translations',
         fallbackLocale: Locale('en', 'US'),
         child: MyApp()
     ),
   );
 }

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      home: MyHomePage(),
    );
  }
}

