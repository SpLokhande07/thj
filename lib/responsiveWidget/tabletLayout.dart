import 'package:flutter/material.dart';
import 'package:thj/responsiveWidget/constants.dart';
import 'package:thj/responsiveWidget/util/myBox.dart';
import 'package:thj/responsiveWidget/util/myTile.dart';

class TabletScaffold extends StatefulWidget {
  const TabletScaffold({Key? key}) : super(key: key);

  @override
  State<TabletScaffold> createState() => _TabletScaffoldState();
}

class _TabletScaffoldState extends State<TabletScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: myDefBackground,
      appBar: myAppBar,
      drawer: mydrawer,
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AspectRatio(
            aspectRatio: 2,
            child: SizedBox(
              width: double.infinity,
              child: GridView.builder(
                shrinkWrap: true,
                itemCount: 8,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4),
                itemBuilder: (_, i) {
                  return MyBox();
                },
              ),
            ),
          ),
          Expanded(
              child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: 5,
                  itemBuilder: (_, i) {
                    return MyTile();
                  }))
        ],
      ),
    );
  }
}
