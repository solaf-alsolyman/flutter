import 'package:flutter/material.dart';
import 'package:flutter_application_2/pro.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SimplePro(),
    );
  }
}
