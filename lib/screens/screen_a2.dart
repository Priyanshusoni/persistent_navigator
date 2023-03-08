import 'package:flutter/material.dart';

class ScreenA2 extends StatefulWidget {
  final String name;
  const ScreenA2({super.key, required this.name});

  @override
  State<ScreenA2> createState() => _ScreenA2State();
}

class _ScreenA2State extends State<ScreenA2> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen A2'),
        automaticallyImplyLeading: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            value++;
          });
        },
      ),
      body: Center(
        child: Text('$value'),
      ),
    );
  }
}
