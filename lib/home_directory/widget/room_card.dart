import 'package:flutter/material.dart';
import 'package:thj/home_directory/actions.dart';

import '../../util/widget.dart';

class RoomCard extends StatelessWidget {
  RoomCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: size.height * 0.7,
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(15)),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RoomCardTitle(),
          SizedBox(
            height: size.height * 0.025,
          ),
          Expanded(child: RoomActions())
        ],
      ),
    );
  }
}
