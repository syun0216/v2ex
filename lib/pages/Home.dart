import 'dart:convert' show json;
import "dart:io";
import "package:flutter/material.dart";
import 'package:v2ex_client/pages/More.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with SingleTickerProviderStateMixin {
  var httpClient = new HttpClient();
  String url = "https://www.v2ex.com/api/topics/hot.json";
  TabController _tabController;

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, length: 3);
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("v2ex client", style: new TextStyle(color: Colors.white),),
          centerTitle: true,
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.search), onPressed: null)
          ],
          backgroundColor: Theme.of(context).primaryColor,
          bottom: new TabBar(
            tabs: <Widget>[
              new Tab(
                icon: new Icon(Icons.new_releases),
                text: "最新",

              ),
              new Tab(icon: new Icon(Icons.trending_up), text: "最热"),
              new Tab(icon: new Icon(Icons.list), text: "节点"),
            ],
            controller: _tabController,
            unselectedLabelColor: Colors.black,
            indicatorColor: Colors.white,
            labelColor: Colors.white,
          ),
        ),
        body: new TabBarView(
          controller: _tabController,
          children: <Widget>[
            new Center(child: new Text('自行车')),
            new Center(child: new Text('船')),
            new Center(child: new Text('巴士')),
          ],
        ),
        floatingActionButton: new FloatingActionButton(
            elevation: 0.0,
            child: new Icon(Icons.subject, color: Colors.white,),
            backgroundColor: Colors.cyan,
            onPressed: () => {
              Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => More()),
              )
            }));
  }
}
