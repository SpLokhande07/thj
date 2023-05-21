import 'package:flutter/material.dart';
import 'package:thj/util/bacground.dart';

import '../constants.dart';
import 'essentials.dart';

class RoomCardTitle extends StatelessWidget {
  RoomCardTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomConstraints(
          maxWidth: size.width * 0.85,
          maxHeight: size.height * 0.6,
          widget: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomText(text: "Room no 201", size: 20, color: kPrimaryColor),
              SizedBox(
                height: size.height * 0.01,
              ),
              CustomText(
                text: "Aishwarya heights, 100ft road, Tisgaon, Kalyan east",
                size: 16,
                color: kGreyColor,
                maxLines: 2,
              ),
            ],
          ),
        ),
        RoundedBackground(
          height: 20,
          child: Icon(
            Icons.arrow_drop_down_outlined,
          ),
        )
      ],
    );
  }
}
