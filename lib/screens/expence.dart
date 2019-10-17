import 'package:flutter/material.dart';

class Expencepage extends StatefulWidget {
  @override
  _ExpencepageState createState() => _ExpencepageState();
}

class _ExpencepageState extends State<Expencepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(slivers: <Widget>[
        SliverAppBar(
          title: Text("Add Expense"),
          expandedHeight: 50.00,
          elevation: 14.0,
          pinned: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xff0ccda3), Color(0xffc1fcd3)],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
