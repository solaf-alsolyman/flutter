import 'package:flutter/material.dart';

class SimplePro extends StatelessWidget {
  const SimplePro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('AppBar Title'),
        ),
      ),
    );
  }
}
