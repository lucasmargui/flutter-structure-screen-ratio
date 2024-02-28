import 'package:flutter/material.dart';

import 'common/constants/routes.dart';
import 'features/home/home_page.dart';
import 'features/splash/splash_page.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: NamedRoute.initial,
      routes: {
        NamedRoute.home: (context) => const HomePage(),
        NamedRoute.initial: (context) => const SplashPage(),
      },
    );
  }
}
