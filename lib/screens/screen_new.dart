import 'package:flutter/material.dart';

class ScreenNew extends StatelessWidget {
  const ScreenNew({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen New'),
        automaticallyImplyLeading: true,
      ),
      body: const Center(child: Text('Screen New')),
    );
  }
}
