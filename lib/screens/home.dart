import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:nice_button/nice_button.dart';

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
        body: Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
            colors: <Color>[Color(0xff78ffd6),
              Color(0xff007991),],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight),
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 80.0, left: 20.0, bottom: 10.0),
            child: Row(
              children: <Widget>[
                Text(
                  greeting,
                  style: TextStyle(
                      fontSize: 40.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  width: 15.0,
                ),
                icon,
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 50.0, left: 20.0, bottom: 10.0),
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
            padding: const EdgeInsets.only(top: 1.0, left: 25.0, bottom: 10.0),
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
          Padding(
            padding: const EdgeInsets.only(top: 100.0),
            child: Column(
              children: <Widget>[
                Button("Income", Icons.add, [
                  Color(0xfffa897b), Color(0xffffdd94)
                ]),
                SizedBox(
                  height: 50.0,
                ),
                Button("Expence", Icons.remove,
                    [Color(0xfffa897b), Color(0xffffdd94)]),
              ],
            ),
          )
        ],
      ),
    ));
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
      return Icon(MdiIcons.weatherSunset, color: Colors.amber, size: 45.0);
    } else if (timeOfDay >= 12 && timeOfDay < 16) {
      return Icon(
        MdiIcons.weatherSunny,
        color: Colors.amber,
        size: 45.0,
      );
    } else if (timeOfDay >= 16 && timeOfDay < 21) {
      return Icon(MdiIcons.weatherSunsetDown,
          color: Color(0xffccfbff), size: 45.0);
    } else if (timeOfDay >= 21 && timeOfDay < 24) {
      return Icon(MdiIcons.moonWaningCrescent,
          color: Color(0xff023074), size: 45.0);
    }
  }

  Widget Button(text, icon, colors) {
    return NiceButton(
      radius: 20,
      width: 250,
      padding: const EdgeInsets.all(15),
      text: text,
      icon: icon,
      gradientColors: colors,
      elevation: 5,
      onPressed: () {},
    );
  }
}

class CustomShapeClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 110);
    path.quadraticBezierTo(70, size.height - 90, 180, size.height - 130);
    path.quadraticBezierTo(
        size.width, size.height - 190, size.width - 10, size.height);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
