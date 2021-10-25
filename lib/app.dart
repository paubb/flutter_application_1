import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/home.dart';

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(primarySwatch: Colors.grey),
      darkTheme: ThemeData.dark(),
      home: HomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
