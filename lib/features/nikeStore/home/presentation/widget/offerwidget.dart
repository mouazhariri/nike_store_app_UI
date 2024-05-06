import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike_store/core/util/constants.dart';

class OfferWidget extends StatelessWidget {
  const OfferWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Stack(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        "New Arrivals",
                        style: TextStyle(
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.w600,
                          color: Colors.black,
                          fontSize: 16,
                        ),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: Text("See all",
                            style: TextStyle(
                              fontFamily: "Raleway",
                              fontWeight: FontWeight.w700,
                              color: Theme.of(context).colorScheme.onPrimary,
                              fontSize: 14,
                            )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Stack(
                    children: [
                      Container(
                        // width: 30,
                        height: 110,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(20),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 3,
                              offset: Offset(0, 2), // changes position of shadow
                            ),
                          ],
                        ),

                        child: const Padding(
                          padding: EdgeInsets.only(left: 40.0, right: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("Summer Sale",
                                      style: TextStyle(
                                        fontFamily: "Raleway",
                                        fontWeight: FontWeight.w600,
                                        color: Colors.black,
                                        fontSize: 12,
                                      )),
                                  Text(
                                    "15% OFF",
                                    style: TextStyle(
                                      fontFamily: "Raleway",
                                      fontWeight: FontWeight.bold,
                                      color: Colors.deepPurple,
                                      fontSize: 25,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 1,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                          bottom: 20,
                          left: 20,
                          child: SvgPicture.asset(ImagesMaster.star)),
                      Positioned(
                          bottom: 15,
                          left: 160,
                          child: SvgPicture.asset(ImagesMaster.star)),
                      Positioned(
                          top: 10,
                          left: 130,
                          child: SvgPicture.asset(ImagesMaster.star)),
                      Positioned(
                          top: 20,
                          right: 10,
                          child: SvgPicture.asset(ImagesMaster.star)),
                      Positioned(
                          top: 20,
                          left: 180,
                          child: SvgPicture.asset(ImagesMaster.neww)),
                      Positioned(
                          bottom: 0,
                          right: 40,
                          child: ClipRect(
                              child: ImageFiltered(
                                  imageFilter:
                                      ImageFilter.blur(sigmaX: 5.0, sigmaY: 3.0),
                                  child: SvgPicture.asset(
                                    ImagesMaster.shadow,
                                    width: 100,
                                  )))),
                    ],
                  ),
                ],
              ),
              Positioned(
                top: 40,
                right: 20,
                child: Center(
                  child: Image.asset(
                    ImagesMaster.shoe5,
                    width: 150,
                    height: 120,
                  ),
                ),
              ),
            ],
          ),
        ),
      SizedBox(height: 25,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          child: Stack(
            children: [

              Stack(
                children: [
                  Container(
                    width: double.infinity,
                    height: 110,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 1,
                          offset: Offset(1, 1), // changes position of shadow
                        ),
                      ],
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(top: 10.0,right: 30),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("Summer Sale",
                              style: TextStyle(
                                fontFamily: "Raleway",
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                                fontSize: 12,
                              )),
                          Text(
                            "30% OFF",
                            style: TextStyle(
                              fontFamily: "Raleway",
                              fontWeight: FontWeight.bold,
                              color: Colors.deepPurple,
                              fontSize: 25,
                            ),
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                      bottom: 20,
                      left: 120,
                      child: SvgPicture.asset(ImagesMaster.star)),
                  Positioned(
                      top: 15,
                      right: 160,
                      child: SvgPicture.asset(ImagesMaster.star)),
                  Positioned(
                      bottom: 20,
                      right: 30,
                      child: SvgPicture.asset(ImagesMaster.star)),
                  Positioned(
                      top: 20,
                      left: 10,
                      child: SvgPicture.asset(ImagesMaster.star)),
                  Positioned(
                      top: 30,
                      left: 100,
                      child: Transform.rotate(angle:120 ,
                          child: SvgPicture.asset(ImagesMaster.neww))),
                  Positioned(
                      bottom: 5,
                      left: 20,
                      child: ClipRect(
                          child: ImageFiltered(
                              imageFilter:
                                  ImageFilter.blur(sigmaX: 5.0, sigmaY: 3.0),
                              child: SvgPicture.asset(
                                ImagesMaster.shadow,
                                width: 80,
                              )))),
                ],
              ),
              Positioned(
                top: 0,
                left: 0,
                child: Center(
                  child:Transform.scale(
                    scaleX: -1,
                    child: Image.asset(
                      ImagesMaster.shoe2,
                      width: 150,
                      height: 120,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
