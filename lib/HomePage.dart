// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';
import 'package:projectx/Components/DrawerComp.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var string1 = "";
  var selectedUser = "";
  var message = "";

  TextEditingController messageController = TextEditingController();

  handleClick() {
    return Text(message);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.deepPurpleAccent),
        title: Text(
          "ProjectX",
          style: TextStyle(color: Colors.deepPurpleAccent),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(LineIcons.video)),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: IconButton(onPressed: () {}, icon: Icon(Icons.call)),
          ),
        ],
      ),
      drawer: DrawerComp(),
      body: Row(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: 300,
            color: Colors.white,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Column(
                children: [
                  CupertinoSearchTextField(),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Friends",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    child: Expanded(
                      child: ListView.builder(
                        itemCount: 15,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text("$index"),
                            onTap: () {
                              setState(() {
                                selectedUser = index.toString();
                              });
                            },
                          );
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Channels",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height - 562,
                    color: Colors.blue,
                    width: MediaQuery.of(context).size.width,
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width - 300,
            color: Colors.grey.shade300,
            child: Stack(
              children: [
                handleClick(),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Align(
                    alignment: Alignment.bottomCenter,
                    child: CupertinoTextField(
                      placeholder: "Message #General",
                      controller: messageController,
                      suffix: IconButton(
                          onPressed: () {
                            setState(() {
                              var message1 = messageController.text;
                              message = message1;
                            });
                          },
                          icon: Icon(
                            Icons.send,
                            color: Colors.deepPurpleAccent,
                          )),
                      padding: EdgeInsets.all(8.0),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
