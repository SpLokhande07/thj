import 'package:flutter/material.dart';

import '../responsiveWidget/constants.dart';
import '../responsiveWidget/util/myBox.dart';
import '../responsiveWidget/util/myTile.dart';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({Key? key}) : super(key: key);

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefBackground,
      appBar: myAppBar,
      body: Row(
        children: [
          mydrawer,
          Expanded(
              flex: 3,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  AspectRatio(
                    aspectRatio: 4,
                    child: SizedBox(
                      width: double.infinity,
                      child: GridView.builder(
                        shrinkWrap: true,
                        itemCount: 4,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 4),
                        itemBuilder: (_, i) {
                          return const MyBox();
                        },
                      ),
                    ),
                  ),
                  Expanded(
                      child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: 5,
                          itemBuilder: (_, i) {
                            return const MyTile();
                          }))
                ],
              )),
          Expanded(
              child: Column(
            children: [
              Expanded(
                  child: Container(
                color: Colors.pink,
              ))
            ],
          ))
        ],
      ),
    );
  }
}
