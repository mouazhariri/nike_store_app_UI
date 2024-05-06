import 'package:go_router/go_router.dart';
import 'package:nike_store/features/nikeStore/cart/presentation/page/myCart_page.dart';
import 'package:nike_store/features/nikeStore/home/domain/entitties/shoesCard.dart';
import 'package:nike_store/features/nikeStore/home/presentation/pages/home.dart';
import 'package:nike_store/features/nikeStore/home/presentation/widget/shoes_details.dart';
import 'package:nike_store/features/nikeStore/main/presentation/page/main.dart';
import 'package:nike_store/features/nikeStore/splash/presentation/pages/splash.dart';

import '../../features/nikeStore/onboarding/presentation/pages/onBoarding.dart';

class GoRoutingGenerator {
  static final router = GoRouter(routes: [
    GoRoute(
      path: ScreenPath.splash,
      name: ScreenName.splash,
      builder: (context, state) => const Splash(),
      // builder: (context, state) => const MainPage(),
    ),
    GoRoute(
        path: ScreenPath.onBoarding,
        name: ScreenName.onBoarding,
        // builder: (context, state) => const SplashPage(),
        builder: (context, state) => const OnBoarding(),
        routes: [
          GoRoute(
              path: ScreenPath.homeStore,
              name: ScreenName.homeStore,
              // builder: (context, state) => const SplashPage(),
              builder: (context, state) => const MainPage(),
              routes: [
                GoRoute(
                  path: "${ScreenPath.shoesDetails}/:index",
                  name: ScreenName.shoesDetails,
                  builder: (context, state) =>  ShoesDetails(
                    index:int.parse( state.pathParameters['index']!),
                    shoesCard: state.extra  as List<ShoesCard>,
                  ),
                ),
                GoRoute(
                  path: ScreenPath.myCart,
                  name: ScreenName.myCart,
                  builder: (context, state) => const MyCartPage(

                  ),
                )
              ]),
        ]),
  ]);
}

class ScreenPath {
  static const String host = 'nike_store.com';
  static const String splash = '/';
  static const String home = '/home';
  static const String productsDetails = 'products_details';
  static const String products = 'products';
  ///*   nike shop *///
  static const String onBoarding = '/onBoarding';
  static const String homeStore = 'homeStore';
  static const String shoesDetails = 'ShoesDetails';
  static const String myCart = 'MyCart';

}

class ScreenName {
  static const String splash = '/';
  static const String home = '/home';
  static const String productsDetails = '/products_details';
  static const String products = '/products';
  ///*   nike shop *///
  static const String onBoarding = '/onBoarding';
  static const String homeStore = 'homeStore';
  static const String shoesDetails = 'ShoesDetails';
  static const String myCart = 'MyCart';


}
