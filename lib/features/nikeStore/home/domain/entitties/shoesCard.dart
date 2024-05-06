import 'package:equatable/equatable.dart';

class ShoesCard extends Equatable{
  final String name;
  final String image;
  final String price;

 const ShoesCard({required this.name, required this.image, required this.price});

  @override
  // TODO: implement props
  List<Object?> get props => [name,image,price];
}