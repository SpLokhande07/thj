import 'package:flutter/material.dart';

import '../../util/background.dart';
import '../../util/essentials.dart';
import '../widget/room_card.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: CustomScrollView(
          slivers: [
            SliverList(
                delegate: SliverChildListDelegate([
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomConstraints(
                    maxWidth: 0.65,
                    widget: RichText(
                      softWrap: true,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      text: const TextSpan(
                          text: "Welcome,",
                          style: TextStyle(fontSize: 32, color: Colors.black87),
                          children: [
                            TextSpan(
                              text: "\nMr Saiprasad Lokhande",
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.w600),
                            ),
                          ]),
                    ),
                  ),
                  RoundedBackground(
                      height: MediaQuery.of(context).size.width * 0.125,
                      child: CustomIcon(
                        icon: Icons.search,
                      ))
                ],
              ),
              // Container(
              //   width: size.width,
              //   height: size.height * 0.8,
              //   child: Center(
              //     child: CustomText(text: "No rooms to display", size: 20),
              //   ),
              // ),
            ])),
            SliverToBoxAdapter(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                  Container(
                      height: size.height * 0.7,
                      width: size.width,
                      child: RoomCard()
                      // ListView.separated(
                      //   itemCount: 4,
                      //   shrinkWrap: false,
                      //   scrollDirection: Axis.horizontal,
                      //   itemBuilder: (_, i) => RoomCard(),
                      //   separatorBuilder: (BuildContext context, int index) {
                      //     return SizedBox(
                      //       width: size.width * 0.075,
                      //     );
                      //   },
                      // ),
                      ),
                  SizedBox(
                    height: size.height * 0.05,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
