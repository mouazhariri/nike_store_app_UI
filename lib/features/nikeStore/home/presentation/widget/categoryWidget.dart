import 'package:flutter/material.dart';
import 'package:nike_store/features/nikeStore/home/presentation/widget/categoryItems.dart';

class CategoryWidget extends StatefulWidget {
  const CategoryWidget({super.key});

  @override
  State<CategoryWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<CategoryWidget> {
  bool isActive = false;
  int? selected = 0;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(left: 12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Select Category",
            style: TextStyle(
              fontFamily: "Raleway",
              fontWeight: FontWeight.w600,
              color: Colors.black,
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SizedBox(
            height: 50,
            // width: 300,
            child: ListView.builder(
              itemCount: 6,
              itemBuilder: (context, index) {
                isActive=index==selected?true:false;
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selected=index;
                      isActive=index==selected?true:false;

                    });
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: CategoryItems(index: index,isActive: isActive,),
                  ),
                );
              },
              scrollDirection: Axis.horizontal,
            ),
          )
        ],
      ),
    );

  }
}
