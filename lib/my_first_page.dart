import 'package:flutter/material.dart';

class MyFirstPage extends StatelessWidget {
  const MyFirstPage({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.primary,
        title: Text(title,
            style: TextStyle(color: Theme.of(context).colorScheme.onPrimary)),
      ),
      body: ListView(
        children: [
          Container(
            height: 50,
            color: Colors.amber[600],
            alignment: Alignment.centerLeft,
            child: const Text('Left no padding'),
          ),
          // TODO add widgets here
        ],
      ),
    );
  }
}
