import 'package:flutter/material.dart';

class MyFavoriteIconWidget extends StatefulWidget {
  const MyFavoriteIconWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<MyFavoriteIconWidget> createState() => _MyFavoriteIconWidgetState();
}

class _MyFavoriteIconWidgetState extends State<MyFavoriteIconWidget> {
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
