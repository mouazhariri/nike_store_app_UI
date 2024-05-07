import 'package:dio/dio.dart';

import '../../features/nikeStore/home/domain/entitties/shoesCard.dart';

class EndPoint {

}

class LocalKeys {
  static const appLanguage = "app_language";
  static const appTheme = "app_theme";
}

class ImagesMaster {
  static const nikeSplash = "assets/svg/nike.svg";
  static const nikeOnBoarding2 = "assets/svg/onBoarding2.svg";
  static const nikeOnBoarding3 = "assets/images/onBoarding3.png";
  static const nikeOnBoarding4 = "assets/svg/onBoarding4.svg";
  static const nikeOnBoarding5 = "assets/svg/onBoarding5.svg";
  static const nikeOnBoarding6 = "assets/svg/onBoarding6.svg";
  static const nikeOnBoarding7 = "assets/svg/onBoarding7.svg";
  static const nikeOnBoarding8 = "assets/svg/onBoarding8.svg";
  static const shadow = "assets/svg/shadow.svg";
  static const circle = "assets/svg/circle.svg";
  static const circleShoes = "assets/svg/circleShoes.svg";
  static const drawer = "assets/svg/drawer.svg";
  static const bag = "assets/svg/bag.svg";
  static const star = "assets/svg/star.svg";
  static const neww = "assets/svg/new.svg";
  static const bell = "assets/svg/bell.svg";
  static const heart = "assets/svg/heart.svg";
  static const filter = "assets/svg/filter.svg";
  static const shoe1 = "assets/images/shoe1.png";
  static const shoe2 = "assets/images/shoe2.png";
  static const shoe3 = "assets/images/shoe3.png";
  static const shoe4 = "assets/images/shoe4.png";
  static const shoe5 = "assets/images/shoe5.png";
  static const shoe6 = "assets/images/shoe6.png";
  static const shoe7 = "assets/images/shoe7.png";
  static const shoe8 = "assets/images/shoe8.png";
  static const shoe9 = "assets/images/shoe9.png";
  static const shoe10 = "assets/images/shoe10.png";
}
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