/**
 *mixins: 混入
 *
 * mixins实现类似多继承的功能
 * 1 作为mixins的类只能继承自Object 不能继承其他类
 * 2 作为mixins的类不能有构造函数
 * 3 一个类可以mixins多个mixins类
 * 4 mixins绝不是继承, 也不是借口 而是一种全新的特征(能实现类似于多继承的功能)
 */
class Person {
  String name;
  num age;
  Person(this.name, this.age);
  printInfo() {
    print('${this.name} ---- ${this.age}');
  }

}

class A {
  String info = "this is a";
  void printA() {
    print("A");
  }
}

class B {
  void printB() {
    print("B");
  }
}

//with
class C extends Person with A,B {
  C(String name, num age) : super(name, age);
}

void main() {
  var c = new C("张三",20);
  c.printInfo();
  c.printA();
  c.printB();

  print(c is C);
  print(c is A);
  print(c is B);
}