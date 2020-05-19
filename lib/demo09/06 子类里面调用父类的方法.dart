/**
 * extends
 * 子类会继承父类里面可见的属性和方法 但是不会继承构造函数
 * 子类能复写父类的方法 getter和setter
 * */

class Person1 {
  String name;
  num age;
  Person1(this.name,this.age);
  void printInfo() {
    print("${this.name} ---- ${this.age}");
  }
  work() {
    print("${this.name}在工作.....");
  }
}

class Web extends Person1 {
  Web(String name, num age) : super(name, age);
  run() {
    print("run");
    super.work();  //子类调用父类的方法

  }
  //复写父类的方法
  @override
  void printInfo() {
    print("姓名: ${this.name} ---- 年龄: ${this.age}");
  }
  @override
  work() {
    print("${this.name}的工作是写代码");
  }
}


main() {
  Web w = new Web("李四", 20);
//  w.printInfo();
//  w.work();
  w.run();
}

