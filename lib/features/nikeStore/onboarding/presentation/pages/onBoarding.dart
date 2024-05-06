import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:nike_store/core/util/constants.dart';
import 'package:nike_store/core/util/go_routing.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({super.key});

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  int currentIndex = 0;
  late PageController _controller;
  final List<Widget> listWidget = [
    Stack(
      children: [
        Positioned(
            left: 30,
            top: 105,
            child: SvgPicture.asset(
              ImagesMaster.nikeOnBoarding4,
            )),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.only(top: 120),
              child: Center(
                child: Text(
                  "WELCOME TO \nNIKE",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SvgPicture.asset(
              ImagesMaster.nikeOnBoarding5,
              height: 18,
              width: 134,
            )
          ],
        ),
        Positioned(
            left: 45,
            top: 300,
            child: SvgPicture.asset(
              ImagesMaster.nikeOnBoarding6,
              color: Colors.grey[300],
            )),
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned(
              bottom: 100,
              child: SvgPicture.asset(
                ImagesMaster.nikeOnBoarding2,
                color: Colors.grey[300],
              ),
            ),
            Positioned(
                bottom: 140,
                left: 35,
                child: ClipRect(
                  child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                    child: SvgPicture.asset(
                      ImagesMaster.shadow,
                    ),
                  ),
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Image.asset(
                  ImagesMaster.nikeOnBoarding3,
                ),
              ],
            ),
          ],
        ),
        Positioned(
            left: 45,
            bottom: 1,
            child: SvgPicture.asset(
              ImagesMaster.nikeOnBoarding8,
              color: Colors.grey[300],
            )),
        Positioned(
            right: 30,
            bottom: 50,
            child: SvgPicture.asset(
              ImagesMaster.nikeOnBoarding7,
              color: Colors.grey[300],
            )),
      ],
    ),
    Stack(
      children: [
        Positioned(
            left: 25,
            top: 110,
            child: SvgPicture.asset(
              ImagesMaster.nikeOnBoarding7,
            )),
        Positioned(
            right: 25,
            top: 100,
            child: SvgPicture.asset(
              ImagesMaster.nikeOnBoarding6,
            )),
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned(
              bottom: 100,
              child: SvgPicture.asset(
                ImagesMaster.nikeOnBoarding2,
                fit: BoxFit.fill,
                color: Colors.grey[300],
              ),
            ),
            Positioned(
                bottom: 260,
                left: 50,
                child: Center(
                  child: ClipRect(
                    child: ImageFiltered(
                      imageFilter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 4.0),
                      child: SvgPicture.asset(
                        ImagesMaster.shadow,
                        color: Colors.black,
                      ),
                    ),
                  ),
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 110,
                ),
                Image.asset(
                  ImagesMaster.shoe1,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Let`s Start Journey\n With NIKE",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Smart, Gorgeous & Fashionable \n Collection Explore Now",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),
              ],
            ),
          ],
        ),
      ],
    ),
    Stack(
      children: [
        Positioned(
            left: 25,
            top: 100,
            child: SvgPicture.asset(
              ImagesMaster.nikeOnBoarding6,
              width: 77,
              height: 77,
            )),
        Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Positioned(
              bottom: 120,
              left: 10,
              child: SvgPicture.asset(
                ImagesMaster.nikeOnBoarding2,
                fit: BoxFit.fill,
                color: Colors.grey[300],
              ),
            ),
            Positioned(
              top: 150,
              child: SvgPicture.asset(
                ImagesMaster.circle,
              ),
            ),
            Positioned(
                bottom: 300,
                left: 70,
                child: Center(
                  child: ClipRect(
                    child: ImageFiltered(
                      imageFilter: ImageFilter.blur(
                          sigmaX: 4.0, sigmaY: 4.0),
                      child: SvgPicture.asset(
                        ImagesMaster.shadow,
                        color: Colors.black,
                      ),
                    ),
                  ),
                )),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Image.asset(
                  ImagesMaster.shoe2,
                ),


              ],
            ),
            const Positioned(
              bottom:100,
              child: Column(
                children: [
                  Text(
                    "You Have the\n Power To",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "There Are Many Beautiful And Attractive\n Plants To Your Room",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    ),
  ];

  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onBackground,
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: PageView.builder(
                    controller: _controller,
                    onPageChanged: (int index) {
                      setState(() {
                        currentIndex = index;
                      });
                    },
                    itemCount: listWidget.length,
                    itemBuilder: (context, index) {
                      return listWidget[index];
                    }),
              ),
              Container(
                width: double.infinity,
                height: 50,
                margin: const EdgeInsets.only(
                  top: 0,
                  bottom: 40,
                  left: 20,
                  right: 20,
                ),
                child: ElevatedButton(

                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                  ),
                  onPressed: () {
                    if (currentIndex == listWidget.length - 1) {
                      GoRoutingGenerator.router.pushNamed(ScreenName.homeStore);
                    }
                    _controller.nextPage(
                        duration: Duration(milliseconds: 100),
                        curve: Curves.bounceIn);
                    // setState(() {
                    //   currentIndex++;
                    //
                    // });
                  },
                  child: Text(
                    currentIndex == 0 ? "Get Started" : 'Next',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w400,
                        color: Colors.black),
                  ),
                ),
              )
            ],
          ),
          Positioned(
            bottom: 160,
            left: 130,
            child: Center(
              child: Container(
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        listWidget.length, (index) => buildDots(index))),
              ),
            ),
          )
        ],
      ),
    );
  }

  Container buildDots(int index) {
    return Container(
      height: 5,
      width: currentIndex == index ? 43 : 32,
      margin: EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: currentIndex == index ? Colors.white : Color(0xFFEC9E03),
      ),
    );
  }
}
