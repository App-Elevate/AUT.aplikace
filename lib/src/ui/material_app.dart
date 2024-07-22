import 'dart:async';

import 'package:coree/src/_conf/hive.dart';
import 'package:coree/src/_global/app.dart';
import 'package:coree/src/_global/providers/is_online.dart';
import 'package:coree/src/_global/providers/remote_config.dart';
import 'package:coree/src/_messaging/messaging.dart';
import 'package:coree/src/lang/l10n_context_extension.dart';
import 'package:coree/src/_routing/app_router.dart';
import 'package:coree/src/logic/deep_link_transformer_logic.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';
import 'package:toastification/toastification.dart';

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _appRouter = AppRouter();
  Locale? _locale;

  @override
  void initState() {
    initLocale();
    // Also handle any interaction when the app is in the background via a
    // Stream listener
    super.initState();
  }

  void initLocale() {
    if (Texts.supportedLocales.contains(App.currentLocale)) {
      if (_locale == null) unawaited(Hive.box(Boxes.settings).put(HiveKeys.locale, App.currentLocale.languageCode));
      _locale ??= App.currentLocale;
    } else {
      if (_locale == null) unawaited(Hive.box(Boxes.settings).put(HiveKeys.locale, App.defaultLocale.languageCode));
      _locale ??= App.defaultLocale;
    }
    App.translate = _onTranslatedLanguage;
  }

  void _onTranslatedLanguage(Locale? locale) {
    locale ??= App.defaultLocale;
    unawaited(Hive.box(Boxes.settings).put(HiveKeys.locale, locale.languageCode));
    App.currentLocale = locale;
    setState(() {
      _locale = locale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      supportedLocales: Texts.supportedLocales,
      localizationsDelegates: Texts.localizationsDelegates,
      locale: _locale,
      debugShowCheckedModeBanner: false,
      routerConfig: _appRouter.config(
        reevaluateListenable: Messaging.messagingProvider,
        includePrefixMatches: true,
        deepLinkTransformer: (uri) async => deepLinkTransformer(uri),
      ),
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}

class MyAppWrapper extends StatelessWidget {
  const MyAppWrapper({super.key});

  @override
  Widget build(BuildContext context) {
    return ToastificationWrapper(
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (context) => IsOnline(), lazy: false),
          ChangeNotifierProvider(create: (context) => Rmc(), lazy: false),
        ],
        child: const MyApp(),
      ),
    );
  }
}
