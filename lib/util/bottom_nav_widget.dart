import 'package:flutter/material.dart';
import 'package:thj/constants.dart';

class BottomNavWidget extends StatefulWidget {
  const BottomNavWidget({Key? key}) : super(key: key);

  @override
  State<BottomNavWidget> createState() => _BottomNavWidgetState();
}

class _BottomNavWidgetState extends State<BottomNavWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Container(
        height: size.height * 0.1,
        width: size.width,
        decoration: BoxDecoration(
            color: kDarkBlueColor, borderRadius: BorderRadius.circular(25)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            BottomNavIcon(icondata: Icons.home_sharp, isActive: true),
            BottomNavIcon(icondata: Icons.menu, isActive: false),
            BottomNavIcon(icondata: Icons.notifications, isActive: false),
            BottomNavIcon(icondata: Icons.account_circle, isActive: false),
          ],
        ),
      ),
    );
  }
}

class BottomNavIcon extends StatefulWidget {
  IconData icondata;
  bool isActive;

  BottomNavIcon({Key? key, required this.icondata, this.isActive = false})
      : super(key: key);

  @override
  State<BottomNavIcon> createState() => _BottomNavIconState();
}

class _BottomNavIconState extends State<BottomNavIcon> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          widget.icondata,
          color: Colors.white.withOpacity(0.8),
          size: 32,
        ),
        if (widget.isActive)
          Container(
            width: 15,
            height: 2,
            decoration: const BoxDecoration(
              shape: BoxShape.rectangle,
              color: kPurpleColor,
            ),
          )
      ],
    );
  }
}
