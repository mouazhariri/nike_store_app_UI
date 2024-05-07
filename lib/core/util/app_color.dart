
import 'dart:ui';

import 'package:rxdart/rxdart.dart';

var localSubjectAppColor=BehaviorSubject<int>();
changeAppColor(int color){
  return localSubjectAppColor.sink.add(color);
}
class AppColor{
  static const int white=0;
  static const int black=1;
  static List colors=[
    const Color(0XFF606ACB),
    const Color(0XFF7DDBDA),
    const Color(0XFFCB1D1D),
    const Color(0XFFA9CFEB),
    const Color(0XFF0B2F8B),
  ];

  static Color getColorItem() => (colors.toList()..shuffle()).first;

}