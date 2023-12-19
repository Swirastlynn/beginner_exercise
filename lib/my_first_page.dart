import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

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
          Container(
            height: 50,
            color: Colors.amber[500],
            alignment: Alignment.center,
            child: const Text('Center'),
          ),
          Container(
            height: 50,
            color: Colors.amber[400],
            alignment: Alignment.centerRight,
            child: const Text('Right no padding'),
          ),
          Container(
            height: 50,
            color: Colors.amber[300],
            alignment: Alignment.centerLeft,
            child: const Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text('Left with 8 padding'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 50,
              color: Colors.amber[200],
              alignment: Alignment.center,
              child: const Text('Center with 8 margin'),
            ),
          ),
          Container(
            height: 50,
            color: Colors.amber[100],
            alignment: Alignment.centerRight,
            child: const Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Text('Right with 8 padding'),
            ),
          ),
          Container(
            height: 50,
            color: Colors.amber[200],
            child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    const Text("SVG icon: "),
                    SvgPicture.asset('assets/images/check.svg'),
                  ],
                )),
          ),
          Image.network(
              'https://docs.flutter.dev/assets/images/dash/dash-fainting.gif'),
          Container(
            padding: const EdgeInsets.all(8.0),
            child: const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [Text("Left side"), Text("Center"), Text("Right side")],
            ),
          ),
          SizedBox(
            height: 50,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment
                  .stretch, // ensures all children stretch to fill the vertical space
              children: [
                Container(
                  color: Colors.amber[100],
                  alignment: Alignment.center,
                  child: const Text("Left side"),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.blue[200],
                    child: const Text("Center"),
                  ),
                ),
                Container(
                  color: Colors.amber[300],
                  alignment: Alignment.center,
                  child: const Text("Right side"),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
