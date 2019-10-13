import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class IEhome extends StatefulWidget {
  @override
  _IEhomeState createState() => _IEhomeState();
}

class _IEhomeState extends State<IEhome> {
  String greeting = "Hi";
  Icon icon = Icon(Icons.wb_sunny);

  @override
  void initState() {
    greeting = getGreeting();
    icon = getIcon();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffe7e7e7),
      body: Column(
        children: <Widget>[
          ClipPath(
            clipper: CustomShapeClipper(),
            child: Container(
              height: 300.0,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: <Color>[
                      Color(0xff8ecae6),
                      Color(0xff209ebb),
                    ],
                  ),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25.0),
                      bottomRight: Radius.circular(25.0))),
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 80.0, left: 20.0, bottom: 10.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          greeting,
                          style: TextStyle(
                              fontSize: 40.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(width: 15.0,),
                        icon,
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        top: 50.0, left: 20.0, bottom: 10.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "10000.00",
                          style: TextStyle(
                              fontSize: 30.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(top: 1.0, left: 25.0, bottom: 10.0),
                    child: Row(
                      children: <Widget>[
                        Text(
                          "Avilable Balance",
                          style: TextStyle(
                              fontSize: 15.0,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 70.0),
            child: Column(
              children: <Widget>[
                Container(
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                      Center(
                          child: Text(
                        "Income",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300,
                        ),
                      )),
                    ],
                  ),
                  height: 45.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      gradient: LinearGradient(colors: <Color>[
                        Colors.greenAccent[200],
                        Colors.green
                      ])),
                ),
                SizedBox(
                  height: 50.0,
                ),
                Container(
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.remove,
                          color: Colors.white,
                        ),
                      ),
                      Center(
                          child: Text(
                        "Expence",
                        style: TextStyle(
                          fontSize: 20.0,
                          fontWeight: FontWeight.w300,
                        ),
                      )),
                    ],
                  ),
                  height: 45.0,
                  width: 150.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20.0),
                      gradient: LinearGradient(
                          colors: <Color>[Colors.red[100], Colors.red[400]])),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  String getGreeting() {
    var timeOfDay = DateTime.now().hour;
    print(timeOfDay);
    if (timeOfDay >= 0 && timeOfDay < 12) {
      return ("Good Morning");
    } else if (timeOfDay >= 12 && timeOfDay < 16) {
      return ("Good AfterNoon");
    } else if (timeOfDay >= 16 && timeOfDay < 21) {
      return ("Good Evening");
    } else if (timeOfDay >= 21 && timeOfDay < 24) {
      return ("Good Night");
    }
  }

  Icon getIcon() {
    var timeOfDay = DateTime.now().hour;
    print(timeOfDay);
    if (timeOfDay >= 0 && timeOfDay < 12) {
      return Icon(
          MdiIcons.weatherSunset,
          color: Colors.amber,
          size: 50.0);
    } else if (timeOfDay >= 12 && timeOfDay < 16) {
      return Icon(
        MdiIcons.weatherSunny,
        color: Colors.amber,
        size: 50.0,);
    } else if (timeOfDay >= 16 && timeOfDay < 21) {
      return Icon(
          MdiIcons.weatherSunsetDown,
          color: Color(0xffccfbff),
          size: 50.0);
    } else if (timeOfDay >= 21 && timeOfDay < 24) {
      return Icon(
          MdiIcons.moonWaningCrescent,
          color: Color(0xff023074),
          size: 50.0);
    }
  }
}

class CustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(-180, 390.0 - 200);
    path.quadraticBezierTo(100, 350, size.width,250);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}