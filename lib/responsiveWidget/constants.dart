import 'package:flutter/material.dart';

var myDefBackground = Colors.grey[300];

var myAppBar = AppBar(
  backgroundColor: Colors.grey[900],
);

var mydrawer = Drawer(
  backgroundColor: myDefBackground,
  child: Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      DrawerHeader(child: Icon(Icons.favorite)),
      ListTile(leading: Icon(Icons.home), title: Text('D A S H B O A R D')),
      ListTile(
          leading: Icon(Icons.account_circle), title: Text('A C C O U N T')),
      ListTile(leading: Icon(Icons.settings), title: Text('S E T T I N G')),
      ListTile(leading: Icon(Icons.logout), title: Text('L O G O U T')),
    ],
  ),
);
