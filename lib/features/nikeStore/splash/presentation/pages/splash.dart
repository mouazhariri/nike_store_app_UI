import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nike_store/core/util/constants.dart';
import 'package:nike_store/core/util/go_routing.dart';

class Splash extends StatefulWidget {
  const Splash({super.key});

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    // TODO: implement initState
    Future.delayed(Duration(milliseconds: 1500)).then((value) => GoRoutingGenerator.router.goNamed(ScreenName.onBoarding));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.surface,
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(ImagesMaster.nikeSplash, fit: BoxFit.contain,height: 150,width: 200,)
        ],),
      )
    );
  }
}
