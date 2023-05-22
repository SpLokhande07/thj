import 'package:flutter/material.dart';
import 'package:thj/util/background.dart';
import 'package:thj/util/essentials.dart';

import '../constants.dart';

class RoomActions extends StatefulWidget {
  const RoomActions({Key? key}) : super(key: key);

  @override
  State<RoomActions> createState() => _RoomActionsState();
}

class _RoomActionsState extends State<RoomActions> {
  List<String> list = [
    "Room",
    "Events",
    "Notice",
    "Complaints",
    "Poll",
    "Maintenance",
    "Logout"
  ];
  List<IconData> iconList = [
    Icons.room,
    Icons.event,
    Icons.newspaper,
    Icons.note_alt_outlined,
    Icons.poll,
    Icons.receipt,
    Icons.logout
  ];
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return CustomConstraints(
      // maxHeight: 0.9,
      // maxWidth: 0.8,
      widget: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisSpacing: size.width * 0.025,
          // crossAxisSpacing: size.width * 0.05
        ),
        physics: NeverScrollableScrollPhysics(),
        children: [
          for (int i = 0; i < list.length; i++) icons(iconList[i], list[i]),
        ],
      ),
    );
  }

  Widget icons(IconData icon, String i) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        RoundedBackground(
          height: 40,
          color: kDarkBlueColor,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Icon(icon, color: Colors.white),
            ),
          ),
        ),
        SizedBox(height: 10,),
        CustomText(text: i)
      ],
    );
  }
}
