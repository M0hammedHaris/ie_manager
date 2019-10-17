import 'package:flutter/material.dart';
import 'package:ie_manager/screens/home.dart';

void main() => runApp(IEManager());

class IEManager extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.lightBlue,
      ),
      home: IEHome(),
    );
  }
}