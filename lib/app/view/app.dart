import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:standby/clock/clock.dart';
import 'package:standby/gallery/gallery.dart';
import 'package:standby/l10n/l10n.dart';
import 'package:standby/standby/standby.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  late final GoRouter _router = router(context);

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark(),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: _router,
    );
  }

  GoRouter router(BuildContext context) {
    return GoRouter(
      initialLocation: '/standby',
      routes: [
        GoRoute(
          path: '/standby',
          builder: (_, state) => StandbyPage(key: state.pageKey),
        ),
        GoRoute(
          path: '/gallery',
          builder: (_, state) => GalleryPage(key: state.pageKey),
        ),
        GoRoute(
          path: '/clock',
          builder: (_, state) => ClockPage(key: state.pageKey),
        ),
      ],
    );
  }
}
