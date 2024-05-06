import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nike_store/core/util/go_routing.dart';
import 'package:nike_store/core/widget/default_appbar.dart';
import 'package:nike_store/features/nikeStore/home/domain/entitties/shoesCard.dart';

import '../../../../../core/util/constants.dart';
import '../../../main/presentation/widgets/readmore.dart';
import 'allSheosWidget.dart';

class ShoesDetails extends StatefulWidget {
  final int index;
  final List<ShoesCard> shoesCard;

  const ShoesDetails({super.key, required this.index, required this.shoesCard});

  @override
  State<ShoesDetails> createState() => _ShoesDetailsState();
}

class _ShoesDetailsState extends State<ShoesDetails> {
  bool isClicked = false;
  int i = 0;

  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    i = widget.index;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: PreferredSize(
          preferredSize: Size(double.infinity, 50),
          child: DefaultAppbar(title: "Sneaker Shop",icon: ImagesMaster.bag,)),
      body: Stack(
        // alignment: Alignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: SvgPicture.asset(
                ImagesMaster.circleShoes,
                height: 65,
                width: 300,
              ),
            ),
          ),
          Positioned(
            top: 395,
            right: 150,
            child: Row(
              children: [
                SizedBox(
                  height: 18,
                  width: 22,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        splashFactory: InkRipple.splashFactory,
                        elevation: 0,
                        backgroundColor: Colors.black.withOpacity(0.6),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10)),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          if (i != 0) {
                            i--;
                          }
                        });
                      },
                      child: const Icon(
                        Icons.arrow_back_ios_new,
                        color: Colors.white,
                        size: 8,
                      )),
                ),
                SizedBox(
                  height: 18,
                  width: 22,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        padding: EdgeInsets.zero,
                        splashFactory: InkRipple.splashFactory,
                        elevation: 0,
                        backgroundColor: Colors.black.withOpacity(0.6),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                        ),
                      ),
                      onPressed: () {
                        setState(() {
                          debugPrint("$i");
                          debugPrint("*******************");
                          if (i != widget.shoesCard.length - 1) {
                            i++;
                          }
                          debugPrint("$i");
                        });
                      },
                      child: const Icon(
                        Icons.arrow_forward_ios,
                        color: Colors.white,
                        size: 8,
                      )),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.shoesCard[i].name,
                  textAlign: TextAlign.start,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontFamily: "Raleway",
                    fontWeight: FontWeight.bold,
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "For all young age",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 10,
                    fontFamily: "Raleway",

                    // fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "${widget.shoesCard[i].price}\$",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 25,
                    fontFamily: "Raleway",
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 300,
                ),
                SizedBox(
                  height: 70,
                  child: ListView.builder(
                      padding: EdgeInsets.zero,
                      controller: _controller,
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: widget.shoesCard.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            setState(() {
                              i = index;
                            });
                          },
                          child: SizedBox(
                            height: 70,
                            width: 75,
                            child: Card(
                              color: Theme.of(context).colorScheme.background,
                              elevation: 0,
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                child: Center(
                                  child: Image.asset(
                                    widget.shoesCard[index].image,
                                    width: 55,
                                    height: 55,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        );
                      }),
                ),
                const SizedBox(
                  height: 25,
                ),
                const ExpandableText(
                  "The Max Air 270 unit delivers unrivaled, all-day comfort. The sleek, running-inspired design roots you to everything be good, The sleek, running-inspired design roots you to everything Nike........",
                  trimLines: 3,
                ),
                Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    GestureDetector(
                        onTap: () {
                          setState(() {
                            isClicked = !isClicked;
                          });
                        },
                        child: Padding(
                          padding: EdgeInsets.only(left: 10),
                          child: CircleAvatar(
                            backgroundColor: Colors.grey[300],
                            maxRadius: 25,
                            child: Icon(
                              isClicked
                                  ? Icons.favorite
                                  : Icons.favorite_border,
                              size: 20,
                              color: isClicked ? Colors.red : Colors.black,
                            ),
                          ),
                        )),
                    GestureDetector(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 30, vertical: 15),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.onPrimary,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            SvgPicture.asset(ImagesMaster.bag,
                                color: Colors.white),
                            SizedBox(
                              width: 10,
                            ),
                            Text("Add to cart",
                                style: TextStyle(color: Colors.white)),
                          ],
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Positioned(
            top: 210,
            left: 70,
            child: Container(
              child: Center(
                child: Image.asset(
                  widget.shoesCard[i].image,
                  // width: 50,
                  height: 190,
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
          Positioned(
            top: 360,
            left: 120,
            child: ClipRect(
                child: ImageFiltered(
                    imageFilter: ImageFilter.blur(sigmaX: 4.0, sigmaY: 2.0),
                    child: SvgPicture.asset(
                      ImagesMaster.shadow,
                      width: 150,
                    ))),
          ),
        ],
      ),
    );
  }
}
