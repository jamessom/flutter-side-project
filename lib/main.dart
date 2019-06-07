import 'package:flutter/material.dart';
import 'pages/dogLife/login.page.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FSP',
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      home: LoginPage(),
    );
  }
}
