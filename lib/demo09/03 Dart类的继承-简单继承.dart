/**
 * extends
 * 子类会继承父类里面可见的属性和方法 但是不会继承构造函数
 * 子类能复写父类的方法 getter和setter
 * */

class Person {
  String name = "张三";
  num age = 20;
  void printInfo() {
    print("${this.name} ---- ${this.age}");
  }
}

class Web extends Person {

}


class Person1 {
  String name;
  num age;
  Person1(this.name,this.age);
  void printInfo() {
    print("${this.name} ---- ${this.age}");
  }
}
class Web1 extends Person1 {
  Web1(String name, num age) : super(name, age);

}


main() {
  Web w = new Web();
  print(w.name);
  w.printInfo();

  Web1 w1 = new Web1("Web", 4000);
  w1.printInfo();

}

