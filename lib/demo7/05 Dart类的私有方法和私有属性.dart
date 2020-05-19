/**
 * Dart中没有public private protected 这些访问修饰符
 * 但是我们可以使用_把一个属性或者方法定义成私有
 */
import 'lib/Animal.dart';
void main() {
  Animal a = Animal("小狗",3);
  print(a.age);
//  print(a._name);  访问不到私有属性
  a.printInfo();
  print(a.getName());  //获取私有属性
  a.execRun();  //间接地调用 私有方法
}