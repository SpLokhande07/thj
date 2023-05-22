import 'package:flutter/material.dart';
import 'package:thj/util/background.dart';

import '../constants.dart';
import 'essentials.dart';

class RoomCardTitle extends StatelessWidget {
  RoomCardTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(text: "Room no 201", size: 20, color: kPrimaryColor),
            SizedBox(
              height: size.height * 0.01,
            ),
            CustomConstraints(
              maxWidth: 0.75,
              maxHeight: 0.6,
              widget: CustomText(
                text: "Aishwarya heights, 100ft road, Tisgaon, Kalyan east",
                size: 16,
                color: kGreyColor,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
        GestureDetector(
          onTap: () {
            List<String> list = [
              "",
              "",
              "",
              "",
            ];
            showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                useSafeArea: true,
                backgroundColor: Colors.white,
                constraints: BoxConstraints(
                    maxHeight: list.length < 8
                        ? size.height * (list.length / 10)
                        : size.height * 0.8),
                builder: (_) {
                  return ListView.separated(
                      itemBuilder: (bottomSheetContext, i) {
                        return ListTile(
                          title: CustomText(text: "Room no ${i}0$i"),
                          subtitle: CustomText(text: "Road-${i}0$i"),
                        );
                      },
                      separatorBuilder: (_, i) {
                        return SizedBox(
                          height: size.height * 0.025,
                        );
                      },
                      itemCount: list.length);
                });
          },
          child: RoundedBackground(
            color: Colors.black.withOpacity(0.1),
            child: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.arrow_drop_down_outlined,
              ),
            ),
          ),
        )
      ],
    );
  }
}
