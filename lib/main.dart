import 'package:flutter/material.dart';
import 'package:v2ex_client/pages/Home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'v2ex_client',
      theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primaryColor: Colors.cyan,
          accentColor: Colors.white,
          iconTheme: new IconThemeData(color: Colors.white),
          scaffoldBackgroundColor: const Color.fromRGBO(239,239,239,1.0),
          appBarTheme: new AppBarTheme(
              color: Colors.cyan,
              iconTheme: new IconThemeData(color: Colors.white),
              textTheme:
                  new TextTheme(title: new TextStyle(color: Colors.white, fontSize: 20)))),
      home: new Home(),
    );
  }
}
