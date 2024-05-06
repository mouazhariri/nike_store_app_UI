import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nike_store/features/nikeStore/cart/presentation/page/myCart_page.dart';
import 'package:nike_store/features/nikeStore/favorite/presentation/page/favorite_page.dart';
import 'package:nike_store/features/nikeStore/home/presentation/pages/home.dart';
import 'package:nike_store/features/nikeStore/main/presentation/widgets/appbar.dart';
import 'package:nike_store/features/nikeStore/notification/presentation/page/Notification_page.dart';

import '../../../../../core/util/constants.dart';
import '../../../../../core/util/go_routing.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _bottomNavIndex = 0;
  final List<IconData> iconList = [
    Icons.home,
    Icons.favorite_border,
    Icons.notifications_none_sharp,
    Icons.person_2_outlined
  ];
  final List<Widget> pages=[
    const HomeStore(),
    const FavoritePage(),
    const NotificationPage( ),
    Scaffold(
      appBar: AppBar(title: const Text("dsfsdfsdf"),),
      body: Container(
        height: 100,
        color: Colors.blueGrey,
        width: 100,
      ),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      extendBodyBehindAppBar: true,
      extendBody: true,
      drawer:  const Drawer(
        backgroundColor: Colors.deepPurple,
        child: Chip(label: Text("label")),
      ),
      backgroundColor: Theme.of(context).colorScheme.background,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        elevation: 0,
        onPressed: () {
          GoRoutingGenerator.router.pushNamed(ScreenName.myCart,);

        },
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.transparent,
                borderRadius: const BorderRadius.all(
                  Radius.circular(100),
                ),
                boxShadow: [
                  BoxShadow(
                    color: Theme.of(context)
                        .colorScheme
                        .onPrimary
                        .withOpacity(0.3),
                    spreadRadius: 3,
                    blurRadius: 5,
                    offset: const Offset(-2, 3),
                  ),
                ],
              ),
            ),
            SvgPicture.asset(
              ImagesMaster.bag,
              color: Colors.white,
              width: 30,
              height: 30,
            ),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: pages[_bottomNavIndex],
      bottomNavigationBar: AnimatedBottomNavigationBar(
        height: 70,
        hideAnimationCurve: Curves.bounceInOut,
        gapWidth: 100,
        notchMargin: 25,
        scaleFactor: 2,

        inactiveColor: Colors.black45,
        icons: iconList,
        activeIndex: _bottomNavIndex,
        gapLocation: GapLocation.center,
        activeColor: Theme.of(context).colorScheme.onPrimary,
        elevation: 0,
        notchSmoothness: NotchSmoothness.softEdge,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        //other params
      ),
    );
  }
}
