import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'core/route/rout_names.dart';
import 'core/route/route_generator.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: RouteNames.onboardingPage_1,
      onGenerateRoute: AppRoute(context: context).onGenerateRoute,
    );
  }
}
