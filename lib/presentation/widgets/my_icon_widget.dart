import 'package:flutter/material.dart';

class MyIconWidget extends StatefulWidget {
  const MyIconWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<MyIconWidget> createState() => _MyIconWidgetState();
}

class _MyIconWidgetState extends State<MyIconWidget> {

  @override
  Widget build(BuildContext context) {
    return const Icon(
     Icons.favorite_border,
      size: 40,
    );
  }
}
