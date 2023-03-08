import 'package:effect/routes.dart';
import 'package:flutter/material.dart';

class ScreenB extends StatelessWidget {
  const ScreenB({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Screen B'),automaticallyImplyLeading: false),
      body: Center(
        child: FilledButton(
          onPressed: () {
            Navigator.pushNamed(context, Routes.screenB2);
          },
          child: const Text('Go to B2'),
        ),
      ),
    );
  }
}
