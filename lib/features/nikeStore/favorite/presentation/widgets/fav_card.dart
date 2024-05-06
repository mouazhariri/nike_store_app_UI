import 'package:flutter/material.dart';

import '../../../../../core/util/constants.dart';

class FavCard extends StatefulWidget {
  final String name;
  final String image;
  final String price;

  const FavCard(
      {super.key,
      required this.name,
      required this.image,
      required this.price});

  @override
  State<FavCard> createState() => _FavCardState();
}

class _FavCardState extends State<FavCard> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 201,
      width: 160,
      child: Card(
        color: Theme.of(context).colorScheme.background,
        elevation: 0,
        child: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Center(
                        child: Image.asset(
                          widget.image,
                          width: 200,
                          height: 125,
                        ),
                      ),
                    ),
                    Text("BEST SELLER",
                        style: TextStyle(
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.w600,
                          color: Theme.of(context).colorScheme.onPrimary,
                          fontSize: 10,
                        )),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      widget.name,
                      style: TextStyle(
                        fontFamily: "Raleway",
                        fontWeight: FontWeight.w800,
                        color: Colors.black,
                        fontSize: 18,
                      ),
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text("\$${widget.price}",
                        style: TextStyle(
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          fontSize: 16,
                        )),
                  ],
                ),
              ),
            ),
            Positioned(
                top: 0,
                left: 0,
                child: IconButton(
                  icon: Icon(
                    isClicked ? Icons.favorite : Icons.favorite_border,
                    size: 20,
                    color: isClicked ? Colors.red : Colors.black,
                  ),
                  onPressed: () {
                    setState(() {
                      isClicked = !isClicked;
                    });
                  },
                )),
            Positioned(
                bottom: 20,
                right: 15,
                child: Row(
                  children: [
                    ClipOval(
                      clipBehavior: Clip.hardEdge,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.onPrimary,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    ClipOval(
                      clipBehavior: Clip.hardEdge,
                      child: Container(
                        padding: EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          color: Colors.cyan,
                        ),
                      ),
                    ),
                  ],
                )),
          ],
        ),
      ),
    );
  }
}
