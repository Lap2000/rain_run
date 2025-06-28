import 'package:flutter/material.dart';
import '../../core/core.dart';
import '../../gen/l10n.dart';
import '../router/router.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: (context.t?.appName).orError,
      routerDelegate: Routers.ins.$router.routerDelegate,
      routeInformationProvider: Routers.ins.$router.routeInformationProvider,
      routeInformationParser: Routers.ins.$router.routeInformationParser,
      supportedLocales: L10n.all,
      localizationsDelegates: const <LocalizationsDelegate<dynamic>>[
        AppText.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
        fontFamily: 'Inter',
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
