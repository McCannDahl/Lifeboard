import 'package:flutter/material.dart';
import 'package:frontend/ui/login_page.dart';
import 'package:frontend/ui/please_confirm_account_page.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'ProjectSkeleton',
      theme: new ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/',
      routes: {
        // When navigating to the "/" route, build the FirstScreen widget.
        '/': (context) => LoginPage(),
        // When navigating to the "/second" route, build the SecondScreen widget.
        '/pleaseConfirmAccount': (context) => PleaseConfirmAccountPage(),
      },
    );
  }
}