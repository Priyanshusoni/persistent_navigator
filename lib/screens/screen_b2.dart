import 'package:flutter/material.dart';

class ScreenB2 extends StatefulWidget {
  const ScreenB2({super.key});

  @override
  State<ScreenB2> createState() => _ScreenB2State();
}

class _ScreenB2State extends State<ScreenB2> {
  int value = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Screen B2'),
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
