import 'package:flutter/material.dart';

import '../../../../../core/util/constants.dart';
class AllShoesCard extends StatefulWidget {
  final String name;
  final String image;
  final String price;
  const AllShoesCard({super.key, required this.name, required this.image, required this.price});

  @override
  State<AllShoesCard> createState() => _AllShoesCardState();
}

class _AllShoesCardState extends State<AllShoesCard> {
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
                  color: Colors.white, borderRadius: BorderRadius.circular(20),
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
                     Text(widget.name,
                        style: TextStyle(
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.w800,
                          color: Colors.black,

                          fontSize: 16,
                        ),
                     overflow: TextOverflow.ellipsis,
                       maxLines:      1,
                     ),
                    const SizedBox(
                      height: 8,
                    ),
                     Text("\$${widget.price}",
                        style: TextStyle(
                          fontFamily: "Raleway",
                          fontWeight: FontWeight.w700,
                          color: Colors.black,
                          fontSize: 14,
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
                    isClicked ? Icons.favorite:Icons.favorite_border,
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
                bottom: 0,
                right: 0,
                child: Container(
                  padding: EdgeInsets.all(8),
                  clipBehavior: Clip.hardEdge,
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomRight: Radius.circular(10)),
                    color: Theme.of(context).colorScheme.onPrimary,
                  ),
                  child: const Icon(
                    Icons.add,
                    size: 20,
                    color: Colors.white,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
