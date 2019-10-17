import 'package:community_material_icon/community_material_icon.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:ie_manager/screens/expence.dart';

class IEHome extends StatefulWidget {
  @override
  _IEHomeState createState() => _IEHomeState();
}

class _IEHomeState extends State<IEHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          title: Text("IE Manager"),
          expandedHeight: 300.00,
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
        SliverStaggeredGrid.count(
          crossAxisCount: 2,
          mainAxisSpacing: 8.0,
          crossAxisSpacing: 8.0,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: tile("General", Colors.orange,
                  CommunityMaterialIcons.alpha_g_circle),
            ),
            tile("Transport", Colors.red, CommunityMaterialIcons.bus),
            tile("Shopping", Colors.greenAccent,
                CommunityMaterialIcons.shopping),
            tile("Grocery", Colors.blue, CommunityMaterialIcons.food),
            tile("Bill", Colors.purple, CommunityMaterialIcons.currency_bdt),
            tile("Entertainent", Colors.deepPurple,
                CommunityMaterialIcons.movie),
            tile("Other", Colors.deepPurple, Icons.add),
          ],
          staggeredTiles: [
            StaggeredTile.extent(2, 150.0),
            StaggeredTile.extent(1, 180.0),
            StaggeredTile.extent(1, 130.0),
            StaggeredTile.extent(1, 180.0),
            StaggeredTile.extent(1, 130.0),
            StaggeredTile.extent(1, 150.0),
            StaggeredTile.extent(1, 150.0)
          ],
        )
      ],
    ));
  }

  tile(heading, color, icon) {
    return GestureDetector(
      child: Material(
        color: Colors.white,
        elevation: 14.0,
        shadowColor: Colors.grey,
        borderRadius: BorderRadius.circular(24.0),
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            heading,
                            style: TextStyle(color: color, fontSize: 20.0),
                          ),
                        ),
                        Material(
                          color: color,
                          borderRadius: BorderRadius.circular(20.0),
                          child: Padding(
                            padding: EdgeInsets.all(15.0),
                            child: Icon(
                              icon,
                              color: Colors.white,
                              size: 30.0,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        animationDuration: Duration(seconds: 5),
      ),
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => Expencepage()));
      },
    );
  }
}
