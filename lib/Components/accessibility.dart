// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";

class AccessibilityComp extends StatefulWidget {
  const AccessibilityComp({super.key});

  @override
  State<AccessibilityComp> createState() => _AccessibilityCompState();
}

class _AccessibilityCompState extends State<AccessibilityComp> {
  var switchVal = false;
  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 150,
                    width: 300,
                    child: Card(
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.all(20),
                            title: Text(
                              "Dark Mode",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            leading: switchVal
                                ? Icon(
                                    Icons.nightlight,
                                    color: Colors.deepPurpleAccent,
                                    size: 50,
                                  )
                                : Icon(
                                    Icons.sunny,
                                    color: Colors.amber,
                                    size: 50,
                                  ),
                            trailing: CupertinoSwitch(
                                value: switchVal,
                                onChanged: (val) {
                                  setState(() {
                                    setState(() {
                                      switchVal = val;
                                    });
                                  });
                                }),
                          ),
                          Text("This set the default theme to dark mode.")
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 150,
                    width: 300,
                    child: Card(
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.all(20),
                            title: Text("Dark Mode"),
                            leading: switchVal
                                ? Icon(
                                    Icons.nightlight,
                                    color: Colors.deepPurpleAccent,
                                    size: 50,
                                  )
                                : Icon(
                                    Icons.sunny,
                                    color: Colors.amber,
                                    size: 50,
                                  ),
                            trailing: CupertinoSwitch(
                                value: switchVal,
                                onChanged: (val) {
                                  setState(() {
                                    setState(() {
                                      switchVal = val;
                                    });
                                  });
                                }),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 150,
                    width: 300,
                    child: Card(
                      child: Column(
                        // ignore: prefer_const_literals_to_create_immutables
                        children: [
                          ListTile(
                            contentPadding: EdgeInsets.all(20),
                            title: Text("Dark Mode"),
                            leading: switchVal
                                ? Icon(
                                    Icons.nightlight,
                                    color: Colors.deepPurpleAccent,
                                    size: 50,
                                  )
                                : Icon(
                                    Icons.sunny,
                                    color: Colors.amber,
                                    size: 50,
                                  ),
                            trailing: CupertinoSwitch(
                                value: switchVal,
                                onChanged: (val) {
                                  setState(() {
                                    setState(() {
                                      switchVal = val;
                                    });
                                  });
                                }),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ));
  }
}
