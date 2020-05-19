/**
  部分引入类里面的部分方法
 */
import 'lib/MyMath.dart' show getName;  //引入getName
import 'lib/MyMath.dart' hide getSex;  //隐藏getSex 方法


void main(List<String> arguments) async {

  getName();

}