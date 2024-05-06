import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nike_store/core/util/constants.dart';
import 'package:nike_store/features/nikeStore/home/presentation/widget/allSheosWidget.dart';
import 'package:nike_store/features/nikeStore/home/presentation/widget/categoryItems.dart';
import 'package:nike_store/features/nikeStore/home/presentation/widget/categoryWidget.dart';
import 'package:nike_store/features/nikeStore/home/presentation/widget/offerwidget.dart';
import 'package:nike_store/features/nikeStore/home/presentation/widget/searchWIdget.dart';

import '../../../main/presentation/widgets/appbar.dart';

class HomeStore extends StatefulWidget {
  const HomeStore({super.key});

  @override
  State<HomeStore> createState() => _HomeStoreState();
}

class _HomeStoreState extends State<HomeStore> {
  final ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: PreferredSize(
        preferredSize: Size(double.infinity, 130),
        child: CustomAppbar(),
      ) ,
      body: ListView(
        physics: BouncingScrollPhysics(),
        controller: scrollController,


          children: [
            SearchWidget(),
            SizedBox(
              height: 10,
            ),
            CategoryWidget(),
            SizedBox(
              height: 10,
            ),
            AllShoesWidget(),
            SizedBox(
              height: 10,
            ),
            OfferWidget(),
            SizedBox(
              height: 30,
            ),
          ],
        ),

    );
  }
}
