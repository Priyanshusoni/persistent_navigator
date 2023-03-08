import 'package:persistent_navigator/main.dart';
import 'package:persistent_navigator/routes.dart';
import 'package:flutter/material.dart';

class ScreenA extends StatelessWidget {
  const ScreenA({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen A'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            FilledButton(
              onPressed: () {
                Navigator.pushNamed(
                  screenAKey.currentContext!,
                  Routes.screenA2,
                  arguments: {'name': 'hello'},
                );
              },
              child: const Text('Go to A2'),
            ),
            const SizedBox(height: 20),
            FilledButton(
              onPressed: () {
                Navigator.pushNamed(
                  screenBKey.currentContext!,
                  Routes.screenB2,
                );
              },
              child: const Text('Go to B2'),
            ),
          ],
        ),
      ),
    );
  }
}
