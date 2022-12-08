// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_typing_uninitialized_variables

import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
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
  var selectedUser;
  var message = [];
  var _fileName;
  PlatformFile? pickedFile;
  bool isLoading = false;
  File? fileToDisplay;

  FilePickerResult? result;

  Map? userMessages = {
    0: ["hello", "hi", "how are you?"],
    1: ["lol", "lmao"],
    2: ["jhattu", "hi", "how are you?"],
    3: ["amog bhadva", "hi", "how are you?"],
  };

  TextEditingController messageController = TextEditingController();

  handleClick() {
    if (selectedUser == null) {
      return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Image(image: AssetImage("images/chat.png")),
      );
    } else {
      return Column(
        children: userMessages![selectedUser]!
            .map<Widget>((e) => Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: SizedBox(
                    height: 50,
                    width: MediaQuery.of(context).size.width / 4,
                    child: Card(
                      child: ListTile(
                        title: Text(e),
                        leading: Icon(
                          CupertinoIcons.person_alt_circle,
                          color: Colors.deepPurpleAccent,
                        ),
                      ),
                    ),
                  ),
                ))
            .toList(),
      );
    }
  }

  pickFile() async {
    try {
      setState(() {
        isLoading = true;
      });
      result = await FilePicker.platform.pickFiles(
        type: FileType.any,
        allowMultiple: false,
      );
      if (result != null) {
        _fileName = result!.files.first.name;
        pickedFile = result!.files.first;
        fileToDisplay = File(pickedFile!.path.toString());
      }
    } catch (e) {
      print(e);
    }
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
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Inbox",
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  CupertinoSearchTextField(),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height - 207,
                    width: MediaQuery.of(context).size.width,
                    child: Flex(direction: Axis.vertical, children: [
                      Expanded(
                        child: ListView.builder(
                          itemCount:
                              userMessages == null ? 15 : userMessages!.length,
                          itemBuilder: (context, index) {
                            return ListTile(
                              title: Text("$index"),
                              subtitle: Text(userMessages == null
                                  ? ""
                                  : userMessages![index][0].toString()),
                              onTap: () {
                                setState(() {
                                  selectedUser = index;
                                });
                              },
                            );
                          },
                        ),
                      ),
                    ]),
                  ),
                  SizedBox(
                    height: 20,
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
                Container(
                  height: 50,
                  width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      selectedUser == null ? "" : selectedUser.toString(),
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: MediaQuery.of(context).size.height - 100,
                    width: MediaQuery.of(context).size.width,
                    child: Stack(
                      children: [
                        handleClick(),
                        Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Align(
                            alignment: Alignment.bottomCenter,
                            child: CupertinoTextField(
                              placeholder: "Type the Message",
                              controller: messageController,
                              keyboardType: TextInputType.text,
                              suffix: IconButton(
                                  onPressed: () {
                                    setState(() {
                                      var message1 = messageController.text;
                                      userMessages![selectedUser]!
                                          .add(message1);
                                    });
                                    messageController.clear();
                                  },
                                  icon: Icon(
                                    Icons.send,
                                    color: Colors.deepPurpleAccent,
                                  )),
                              prefix: IconButton(
                                  onPressed: () {
                                    pickFile();
                                  },
                                  icon: Icon(
                                    Icons.attach_file,
                                    color: Colors.deepPurpleAccent,
                                  )),
                              padding: EdgeInsets.all(8.0),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
