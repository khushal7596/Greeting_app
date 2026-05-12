import 'package:flutter/material.dart';
import 'Pages/CounterPage.dart';

void main() {
  runApp( MainApp());
}

class MainApp extends StatelessWidget {
   MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Counterpage(),
    );
  }
}
