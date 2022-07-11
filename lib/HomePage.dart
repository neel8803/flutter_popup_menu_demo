// ignore_for_file: prefer_const_constructors, implementation_imports, unnecessary_import, constant_identifier_names

import 'package:exam/Settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

enum MenuItems { Item1, Item2, Item3 }

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page'),
        centerTitle: true,
        actions: [
          PopupMenuButton(
              child: Icon(Icons.more_vert),
              onSelected: (value) {
                if (value == MenuItems.Item1) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SettingsPage()));
                } else if (value == MenuItems.Item2) {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SettingsPage()));
                } else {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => SettingsPage()));
                }
              },
              itemBuilder: (context) => [
                    PopupMenuItem(
                      value: MenuItems.Item1,
                      child: Text('Item 1'),
                    ),
                    PopupMenuItem(
                      value: MenuItems.Item2,
                      child: Text('Item 2'),
                    ),
                    PopupMenuItem(
                      value: MenuItems.Item3,
                      child: Text('Item 3'),
                    )
                  ])
        ],
      ),
    );
  }
}
