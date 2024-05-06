import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/util/constants.dart';

class CustomAppbar extends StatefulWidget {
  const CustomAppbar({super.key});

  @override
  State<CustomAppbar> createState() => _CustomAppbarState();
}

class _CustomAppbarState extends State<CustomAppbar> {
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: 80,

      child: AppBar(
        elevation: 0,
        leadingWidth: 50,
        centerTitle: true,
        backgroundColor: Theme.of(context).colorScheme.background,

        leading: Container(
          height: 15,
          width: 25,
          child: GestureDetector(

              onTap: () {
                debugPrint("open drawer");
                Scaffold.of(context).openDrawer();
              },
              child: Padding(
                padding: const EdgeInsets.only(left: 20.0),
                child: SvgPicture.asset(
                  ImagesMaster.drawer,

                ),
              )),
        ),
        title: Stack(

          children: [

            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Explore",
                textAlign: TextAlign.center,

                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                  fontFamily: "Raleway",

                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Baseline(
              baselineType: TextBaseline.alphabetic,
               baseline:10,
              child: SvgPicture.asset(
                ImagesMaster.nikeOnBoarding4,
                color: Colors.black,
                width: 20,
                height: 21,
              ),
            )
          ],
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20),
            child: CircleAvatar(

              backgroundColor: Colors.white,
              child: SvgPicture.asset(
                ImagesMaster.bag,
                color: Colors.black,
                width: 30,
                height: 30,
              ),
            ),
          )
        ],
      ),
    );
  }
}
