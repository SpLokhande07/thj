import 'package:flutter/material.dart';

class RoundedBackground extends StatelessWidget {
  double? height;
  Color? color;
  Widget child;
  RoundedBackground({Key? key, required this.child, this.height, this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: height,
      decoration:
          BoxDecoration(shape: BoxShape.circle, color: color ?? Colors.white),
      child: child,
    );
  }
}
