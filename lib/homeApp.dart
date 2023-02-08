import 'package:flutter/material.dart';
import 'package:whatsmishi/pages/calls.dart';
import 'package:whatsmishi/pages/camera_alt.dart';
import 'package:whatsmishi/pages/chat_list.dart';
import 'package:whatsmishi/pages/status_screen.dart';
import 'package:flutter/src/material/tab_controller.dart';


class Home extends StatefulWidget {
  @override
  _WhatsMishisHomeState createState() => new _WhatsMishisHomeState();
}

class _WhatsMishisHomeState extends State<Home> with SingleTickerProviderStateMixin{
  late TabController _tabController;
  @override
  void initState(){
    super.initState();
    _tabController = new TabController(vsync: this,initialIndex: 1, length: 4);
    }
  @override
  Widget build(BuildContext context){
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Mishis"),
        bottom: new TabBar(
          controller: _tabController,
          tabs: <Widget>[
            new Tab(icon: new Icon(Icons.camera_alt)),
            new Tab(text:"CHATS"),
            new Tab(text:"Estados"),
            new Tab(text:"Llamadas"),
          ],
          ),
      ),
      body: new TabBarView(
        controller: _tabController,
        children: <Widget>[
          new Camera(),
          new ChatList(),
          new Status(),
          new Call(),

        ]
        ),
    );
  }
}