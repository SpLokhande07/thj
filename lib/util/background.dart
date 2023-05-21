import 'package:flutter/material.dart';

class RoundedBackground extends StatelessWidget {
  double? height;

  Widget child;
  RoundedBackground({Key? key, required this.child, this.height})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: height,
      decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.white),
      child: child,
    );
  }
}
