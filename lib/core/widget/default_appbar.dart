import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../util/constants.dart';
import '../util/go_routing.dart';

class DefaultAppbar extends StatelessWidget {
  final String title;
  final String icon;

  const DefaultAppbar({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      leadingWidth: 50,
      centerTitle: true,
      backgroundColor: Theme.of(context).colorScheme.background,
      leading: Container(
        height: 15,
        width: 25,
        child: GestureDetector(
            onTap: () {
              GoRoutingGenerator.router.pop();
            },
            child: const Padding(
              padding: EdgeInsets.only(left: 10),
              child: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                    size: 17,
                  )),
            )),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 20.0),
        child: Text(
          title,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.w800,
            fontFamily: "Raleway",

            // fontWeight: FontWeight.bold,
          ),
        ),
      ),
      actions: [
        GestureDetector(
          onTap: (){
            Scaffold.of(context).openDrawer();
          },
          child: Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(
              backgroundColor: Colors.white,
              child: SvgPicture.asset(
                icon,
                color: Colors.black,
                width: 30,
                height: 30,
              ),
            ),
          ),
        )
      ],
    );
  }
}
