import 'package:flutter/material.dart';
import 'package:nike_store/core/util/go_routing.dart';
import 'package:nike_store/features/nikeStore/home/presentation/widget/allShoesCard.dart';

import '../../../../../core/util/constants.dart';
import '../../domain/entitties/shoesCard.dart';

class AllShoesWidget extends StatefulWidget {
  const AllShoesWidget({super.key});

  @override
  State<AllShoesWidget> createState() => _AllShoesWidgetState();
}

class _AllShoesWidgetState extends State<AllShoesWidget> {
  final ScrollController controller = ScrollController();

  final List<ShoesCard> shoesList = [
    const ShoesCard(
        name: 'Nike Jordan', image: ImagesMaster.shoe3, price: '302.00'),
    const ShoesCard(
        name: 'Nike Air max', image: ImagesMaster.shoe4, price: '499.99'),
    const ShoesCard(
        name: 'Nike Club max', image: ImagesMaster.shoe7, price: '150.00'),
    const ShoesCard(
        name: 'Nike Air jordan', image: ImagesMaster.shoe2, price: '850.00'),
    const ShoesCard(
        name: 'Nike max 270 essential',
        image: ImagesMaster.shoe6,
        price: '666.00'),
    const ShoesCard(
        name: 'Nike sport', image: ImagesMaster.shoe8, price: '250.00'),
    const ShoesCard(
        name: 'Nike zoom 100', image: ImagesMaster.shoe9, price: '100.00'),
    const ShoesCard(
        name: 'Nike black solid', image: ImagesMaster.shoe10, price: '75.00'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Popular Shoes",
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
          SizedBox(
            height: 220,
            child: ListView.builder(
                controller: controller,
                scrollDirection: Axis.horizontal,
                // shrinkWrap: true,
                itemCount: shoesList.length,
                itemBuilder: (context, index) {
                  return GestureDetector(
                    onTap: () {
                      GoRoutingGenerator.router.pushNamed(
                        ScreenName.shoesDetails,
                        pathParameters: {
                          'index': index.toString(),
                        },
                        extra: shoesList,
                      );
                    },
                    child: AllShoesCard(
                      name: shoesList[index].name,
                      image: shoesList[index].image,
                      price: shoesList[index].price,
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
