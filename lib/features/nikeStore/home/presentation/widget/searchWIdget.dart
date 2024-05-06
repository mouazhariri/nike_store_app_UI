import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/util/constants.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({super.key});

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  late final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return         Padding
      (
      padding: const EdgeInsets.all(15.0),
      child: Row(
        children: [
          Container(
            height: 55,
            width: 270,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: 0.2,
                    blurRadius: 0.2,
                    offset: Offset(0, 0.8),
                  ),
                ]),
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 5),
              child: Row(
                children: [
                  const Icon(Icons.search_rounded,color: Colors.black45,),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 52,
                    width: 200,
                    child: TextFormField(
                      controller: controller,
                      decoration: InputDecoration(
                        hintText: "Looking for shoes",
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Spacer(),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Theme.of(context).colorScheme.onPrimary,
            ),
            child: Padding(
              padding: const EdgeInsets.all(11.0),
              child: SvgPicture.asset(
                ImagesMaster.filter,
                width: 15,
                height: 15,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    )
    ;
  }
}
