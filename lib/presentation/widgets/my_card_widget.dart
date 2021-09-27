import 'dart:math';

import 'package:flutter/material.dart';

class MyCardWidget extends StatefulWidget {
  const MyCardWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<MyCardWidget> createState() => _MyCardWidgetState();
}

class _MyCardWidgetState extends State<MyCardWidget> {

  @override
  Widget build(BuildContext context) {
    return const Card(
      child: SizedBox(
        height: 300,
        width: 300,
      ),
      color: Colors.yellow,
    );
  }
}
