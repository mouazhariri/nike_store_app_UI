import 'package:flutter/material.dart';

class CategoryItems extends StatefulWidget {
  final int index;
  final   bool isActive;
  const CategoryItems({super.key,required this.index,required this.isActive});

  @override
  State<CategoryItems> createState() => _CategoryItemsState();
}

class _CategoryItemsState extends State<CategoryItems> {
  int currentIndex=0;
final List <String> names=[
  "All Shoes",
  "Outdoor",
  "Sports",
  "Sneakers",
  "NBA",
  "Football",

];
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 130,
      decoration: BoxDecoration(
          color:
              widget.isActive ? Theme.of(context).colorScheme.onPrimary : Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Colors.grey,
              spreadRadius: 0.05,
              blurRadius: 0.05,
              offset: Offset(0, 0),
            ),
          ]),
      child: Center(
        child: Text(
          names[widget.index],
          style: TextStyle(
            fontFamily: "Raleway",
            fontSize: 14,
            color: widget.isActive ? Colors.white : Colors.black,
            fontWeight: FontWeight.w600
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
