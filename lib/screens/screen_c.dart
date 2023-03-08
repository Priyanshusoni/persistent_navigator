import 'package:persistent_navigator/main.dart';
import 'package:persistent_navigator/screens/screen_new.dart';
import 'package:flutter/material.dart';

class ScreenC extends StatelessWidget {
  const ScreenC({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen C'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: FilledButton(
          onPressed: () {
            //to push new screen on top of navigation bar
            Navigator.push(navigatorKey.currentContext!, MaterialPageRoute(builder: (context)=>const ScreenNew()));
          },
          child: const Text('Go to New'),
        ),
      ),
    );
  }
}
