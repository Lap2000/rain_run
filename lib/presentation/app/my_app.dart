import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import '../../core/core.dart';
import '../../gen/l10n.dart';
import '../router/router.dart';
import 'my_app_view_model.dart';

class MyApp extends HookConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final MyAppViewModel myAppViewModel = ref.watch(myAppProvider.notifier);

    useMount(myAppViewModel.onInit);

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
