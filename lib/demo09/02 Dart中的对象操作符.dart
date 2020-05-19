import 'package:flutterdemo1/demo7/02%20Dart%E4%B8%AD%E5%88%9B%E5%BB%BA%E7%B1%BB%E5%92%8C%E4%BD%BF%E7%94%A8%E7%B1%BB.dart';

/**
 * ? 条件运算符(了解)
 * as 类型转换
 * is 类型判断
 * .. 级联操作(连缀)  (记住)
 *
*/

class Person {
  String name;
  num age;
  Person(this.name,this.age);
  void printInfo() {
    print("${this.name} ---- ${this.age}");
  }
}

main() {
  Person p;
  p?.printInfo();  //什么都不会打印

  Person p1 = new Person("张三", 20);
  p1?.printInfo();
  //判断 变量是否是哪一类  也可以判断是否是String或者Number
  if(p1 is Person) {
    p1.name = "李四";
  }
  p1.printInfo();
  print(p1 is Object);

  // as用法
  var p2;
  p2 = "";
  p2 = new Person("李四", 30);
  //强转
  (p2 as Person).printInfo();

  //连缀操作
  Person p3 = new Person("张三4444", 40);
  p3..name = "李四4444"
    ..age = 4000
    ..printInfo();
}
