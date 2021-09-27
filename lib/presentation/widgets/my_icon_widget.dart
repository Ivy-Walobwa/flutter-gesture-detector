import 'package:flutter/material.dart';

class MyIconWidget extends StatefulWidget {
  const MyIconWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<MyIconWidget> createState() => _MyIconWidgetState();
}

class _MyIconWidgetState extends State<MyIconWidget> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: (){
          setState(() {
            isSelected = !isSelected;
          });
        },
        child:  Icon(
          isSelected ? Icons.favorite: Icons.favorite_border,
          size: 40,
          color: isSelected? Colors.red: Colors.black ,
        ));
  }
}
