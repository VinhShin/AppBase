import 'package:flutter/material.dart';

import 'app_config.dart';

void mainCommon() {
  // Here would be background init code, if any
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Base App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    var config = AppConfig.of(context);
    return Scaffold(
        appBar: AppBar(
          title: Text(config?.appDisplayName ?? ""),
        ),
        body: Container(
          color: Colors.white,
          width: double.infinity,
          height: double.infinity,
        ));
  }
}
