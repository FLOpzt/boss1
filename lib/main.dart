import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Ask me anything'),
        backgroundColor: Colors.blue,
      ),
      body: BouBoule(),
    ),
  ));
}

class BouBoule extends StatefulWidget {
  @override
  State<BouBoule> createState() => _BouBouleState();
}

class _BouBouleState extends State<BouBoule> {
  int bool = 1;

  ballchange() {
    setState(() {
      bool = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: MaterialButton(
              onPressed: () {
                ballchange();
              },
              child: Image.asset('assets/images/ball$bool.png'),
            ),
          ),
        ],
      ),
    );
  }
}
