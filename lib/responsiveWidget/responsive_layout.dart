import 'package:flutter/material.dart';

class ResponsiveLayout extends StatefulWidget {
  Widget? mobile;
  Widget? tablet;
  Widget? desktop;
  ResponsiveLayout({Key? key, this.mobile, this.desktop, this.tablet})
      : super(key: key);

  @override
  State<ResponsiveLayout> createState() => _ResponsiveLayoutState();
}

class _ResponsiveLayoutState extends State<ResponsiveLayout> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (_, constraint) {
      print(constraint);
      if (constraint.maxWidth <= 500) {
        return widget.mobile!;
      } else if (constraint.maxWidth <= 1100) {
        return widget.tablet!;
      } else {
        return widget.desktop!;
      }
    });
  }
}
