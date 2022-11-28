// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class DrawerComp extends StatefulWidget {
  const DrawerComp({super.key});

  @override
  State<DrawerComp> createState() => _DrawerCompState();
}

class _DrawerCompState extends State<DrawerComp> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 250,
            width: MediaQuery.of(context).size.width,
            color: Colors.red,
          ),
          ListTile(
            title: Text("Profile"),
            leading: Icon(
              Icons.person,
              color: Colors.deepPurpleAccent,
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          ListTile(
            title: Text("Settings"),
            leading: Icon(
              Icons.settings,
              color: Colors.deepPurpleAccent,
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          ListTile(
            title: Text("Info"),
            leading: Icon(
              Icons.info_outline,
              color: Colors.deepPurpleAccent,
            ),
            trailing: Icon(Icons.arrow_forward_ios_rounded),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 394,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: CupertinoButton.filled(
                      child: Text("Logout"), onPressed: () {})),
            ),
          )
        ],
      ),
    );
  }
}
