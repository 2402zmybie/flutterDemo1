/**
 * 1 使用static 关键字来实现类级别的变量和函数
 * 2 静态方法不能访问非静态成员, 非静态方法可以访问静态成员
 */
//class Person{
//  static String name = '张三';
//  static void show() {
//    print(name);
//  }
//}
//
//main() {
////  var p = new Person();
////  p.show();  //当方法是静态的, 那么不能用new 实例来访问了
//
//  print(Person.name);
//  Person.show();
//}


class Person {
  static String name = "张三";
  int age = 20;
  static void show() {
    print(name);
  }
  //非静态方法可以访问 静态成员以及非静态成员
  void printInfo() {
    print(name);   //访问静态属性
    print(this.age);  //访问非静态属性

    //调用静态方法
    show();
  }

  //静态方法 调用 静态属性,静态方法
  static void printUserInfo() {
    print(name);
    show();
    //静态方法 无法访问非静态的属性和方法
//    print(age);
  }
}

main() {
  Person p = new Person();
  p.printInfo();

  Person.printUserInfo();
}

