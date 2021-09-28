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
  Color bgColor = Colors.yellow;
  bool makeCircular = false;
  double _scaleFactor = 0.5;
  double _baseScaleFactor = 0.5;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onDoubleTap: (){
        setState(() {
          bgColor = Colors.primaries[Random().nextInt(Colors.primaries.length)];
        });
      },
      onLongPress: (){
        setState(() {
          makeCircular = !makeCircular;
        });
      },
      onScaleStart: (details){
        _baseScaleFactor = _scaleFactor;

      },
      onScaleUpdate: (details){
        setState(() {
          _scaleFactor = _baseScaleFactor * details.scale;
        });
      },
      onScaleEnd: (details){
        // return to initial scale
        _scaleFactor = _baseScaleFactor;
      },
      child:   Transform.scale(
        scale: _scaleFactor,
        child: Card(
          shape: makeCircular? const CircleBorder(): const RoundedRectangleBorder(),
          child: const SizedBox(
            height: 300,
            width: 300,
          ),
          color: bgColor,
        ),
      ),
    );
  }
}
