import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import 'my_first_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // debugPaintSizeEnabled = true; // to see the border of widgets

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.amber.shade400),
        useMaterial3: true,
      ),
      home: const MyFirstPage(title: 'My First Page'),
    );
  }
}
