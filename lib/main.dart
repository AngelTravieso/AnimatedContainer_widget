import 'dart:math';

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    final rnd = Random();
    final r = rnd.nextInt(255);
    final g = rnd.nextInt(255);
    final b = rnd.nextInt(255);

    final r2 = rnd.nextInt(255);
    final g2 = rnd.nextInt(255);
    final b2 = rnd.nextInt(255);

    final width = rnd.nextInt(300) + 50;
    final height = rnd.nextInt(300) + 50;

    final boderRadius = BorderRadius.circular(rnd.nextInt(200).toDouble());
    final border = Border.all(
        width: rnd.nextInt(20).toDouble() + 2,
        color: Color.fromRGBO(r2, g2, b2, 1));

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        child: const Icon(Icons.accessibility_new),
        onPressed: () {
          setState(() {});
        },
      ),
      appBar: AppBar(
        title: const Text('Material App Bar'),
      ),
      body: Center(
        child: AnimatedContainer(
          width: width.toDouble(),
          height: height.toDouble(),
          decoration: BoxDecoration(
              color: Color.fromRGBO(r, g, b, 1),
              borderRadius: boderRadius,
              border: border),
          duration: const Duration(milliseconds: 1500),
          curve: Curves.linear,
        ),
      ),
    );
  }
}
