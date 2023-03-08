import 'package:persistent_navigator/routes.dart';
import 'package:persistent_navigator/custom_navigator.dart';
import 'package:flutter/material.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

final GlobalKey<NavigatorState> screenAKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> screenBKey = GlobalKey<NavigatorState>();
final GlobalKey<NavigatorState> screenCKey = GlobalKey<NavigatorState>();

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Navigator Demo',
      navigatorKey: navigatorKey,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.purple),
        useMaterial3: true,
      ),
      home: const Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<GlobalKey<NavigatorState>> navigatorKeys = [
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
    GlobalKey<NavigatorState>(),
  ];

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Screen A'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Screen B'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Screen C')
        ],
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
      body: IndexedStack(
        index: currentIndex,
        children: <Widget>[
          CustomNavigator(
              navigatorKey: screenAKey,
              currentScreenRoute: Routes.screenA,
              changeTab: (index) {
                setState(() {
                  currentIndex = index;
                });
              }),
          CustomNavigator(
              navigatorKey: screenBKey,
              currentScreenRoute: Routes.screenB,
              changeTab: (index) {
                setState(() {
                  currentIndex = index;
                });
              }),
          CustomNavigator(
              navigatorKey: screenCKey,
              currentScreenRoute: Routes.screenC,
              changeTab: (index) {
                setState(() {
                  currentIndex = index;
                });
              }),
        ],
      ),
    );
  }
}
