/**
 * extends
 * 子类会继承父类里面可见的属性和方法 但是不会继承构造函数
 * 子类能复写父类的方法 getter和setter
 * */

class Person1 {
  String name;
  num age;
  Person1(this.name,this.age);
  //匿名构造函数
  Person1.xxx(this.name,this.age);
  void printInfo() {
    print("${this.name} ---- ${this.age}");
  }
}
class Web1 extends Person1 {
  String sex;
  //给匿名的构造函数 传参
  Web1(String name, num age, String sex) : super.xxx(name, age) {
    this.sex = sex;
  }
  run() {
    print("${this.name} ---- ${this.age} -------- ${this.sex}");
  }

}


main() {
  Web1 w1 = new Web1("Web", 4000,"male");
  w1.printInfo();
  w1.run();

}

