import 'package:effect/routes.dart';
import 'package:effect/screens/screen_a.dart';
import 'package:effect/screens/screen_a2.dart';
import 'package:effect/screens/screen_b.dart';
import 'package:effect/screens/screen_b2.dart';
import 'package:effect/screens/screen_c.dart';
import 'package:flutter/material.dart';

class CustomNavigator extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey;
  final String currentScreenRoute;
  final ValueChanged<int> changeTab;
  const CustomNavigator({
    super.key,
    required this.navigatorKey,
    required this.currentScreenRoute,
    required this.changeTab,
  });

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      initialRoute: currentScreenRoute,
      onGenerateRoute: (routeSetting) {
        switch (routeSetting.name) {
          case Routes.screenA:
            return MaterialPageRoute(builder: (ctx) => const ScreenA());
          case Routes.screenB:
            return MaterialPageRoute(builder: (ctx) => const ScreenB());
          case Routes.screenC:
            return MaterialPageRoute(builder: (ctx) => const ScreenC());
          case Routes.screenA2:
            {
              final args = routeSetting.arguments as Map<String, dynamic>;
              //if we want to change tab before push screen call changeTab method
              changeTab(0);
              return MaterialPageRoute(
                builder: (ctx) => ScreenA2(
                  //can pass argument to screens like this
                  name: args['name'],
                ),
              );
            }
          case Routes.screenB2:
            changeTab(1);
            return MaterialPageRoute(builder: (ctx) => const ScreenB2());
          default:
            return MaterialPageRoute(builder: (ctx) => const ScreenA());
        }
      },
    );
  }
}
