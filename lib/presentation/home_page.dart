import 'package:flutter/material.dart';
import 'widgets/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(
            horizontal: width * 0.1, vertical: height * 0.2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children:  const [
            MyCardWidget(),
            MyFavoriteIconWidget()
          ],
        ),
      ),
    );
  }
}


