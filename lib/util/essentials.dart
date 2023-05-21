import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  IconData icon;
  Color? color;
  CustomIcon({Key? key, required this.icon, this.color}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Icon(icon, color: color),
    );
  }
}

class CustomConstraints extends StatelessWidget {
  double? maxWidth;
  double? maxHeight;
  Widget widget;
  CustomConstraints(
      {Key? key, this.maxWidth, this.maxHeight, required this.widget})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        maxWidth: maxWidth != null
            ? MediaQuery.of(context).size.width * maxWidth!
            : double.infinity,
        maxHeight: maxHeight != null
            ? (MediaQuery.of(context).size.height * maxHeight!)
            : double.infinity,
      ),
      child: widget,
    );
  }
}

class CustomText extends StatelessWidget {
  String text;
  double size;
  Color? color;
  TextOverflow overflow;
  FontWeight fontWeight;
  int maxLines;
  CustomText(
      {Key? key,
      required this.text,
      this.size = 16,
      this.color,
      this.maxLines = 1,
      this.overflow = TextOverflow.ellipsis,
      this.fontWeight = FontWeight.normal})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: maxLines,
      style: TextStyle(
        overflow: overflow,
        color: color,
        fontSize: size,
        fontWeight: fontWeight,
      ),
    );
  }
}
