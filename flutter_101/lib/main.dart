import 'package:flutter/material.dart';
import 'package:flutter_application_2/101/text_learn_view.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter 101 Project', 
      debugShowCheckedModeBanner: false, // Debug etiketi 
      home: const TextLearnView(),
      
    );
  }
}
