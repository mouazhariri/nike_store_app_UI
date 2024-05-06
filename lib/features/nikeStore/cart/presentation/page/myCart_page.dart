import 'package:flutter/material.dart';

import '../../../../../core/util/constants.dart';
import '../../../../../core/widget/default_appbar.dart';
import '../../../main/presentation/widgets/appbar.dart';

class MyCartPage extends StatefulWidget {
  const MyCartPage({super.key});

  @override
  State<MyCartPage> createState() => _MyCartPageState();
}

class _MyCartPageState extends State<MyCartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: Size(double.infinity, 130),
          child: DefaultAppbar(title: "My Cart",icon: ImagesMaster.filter,)),
    );
  }
}
