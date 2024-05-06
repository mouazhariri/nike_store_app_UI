
import 'package:rxdart/rxdart.dart';

var localSubjectAppColor=BehaviorSubject<int>();
changeAppColor(int color){
  return localSubjectAppColor.sink.add(color);
}
class AppColor{
  static const int white=0;
  static const int black=1;
}