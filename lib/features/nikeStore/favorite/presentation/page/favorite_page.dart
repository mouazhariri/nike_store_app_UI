import 'package:flutter/material.dart';
import 'package:nike_store/features/nikeStore/favorite/presentation/widgets/fav_card.dart';

import '../../../../../core/util/constants.dart';
import '../../../../../core/widget/default_appbar.dart';
import '../../../main/presentation/widgets/appbar.dart';

class FavoritePage extends StatefulWidget {
  const FavoritePage({super.key});

  @override
  State<FavoritePage> createState() => _FavoritePageState();
}

class _FavoritePageState extends State<FavoritePage> {
  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: const PreferredSize(
          preferredSize: Size(double.infinity, 70),
          child: DefaultAppbar(
            title: "Favorite Page",
            icon: ImagesMaster.heart,
          )),
      body: GridView.builder(
        padding: EdgeInsets.zero,
        controller: controller,

        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 5,
          crossAxisSpacing: 5,
            childAspectRatio: 0.77

        ),
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) {
          return FavCard(
            name: "nike",
            image: ImagesMaster.shoe9,
            price: "100",
          );
        },
      ),
    );
  }
}
