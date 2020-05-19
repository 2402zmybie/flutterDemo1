
class Person{
  //默认构造函数
  Person() {
    print("这是构造函数里面的内容,这个方法在实例化的时候触发");
  }

  String name = "张三";
  int age = 20;
  void printInfo() {
    print("${this.name}---------${this.age}");
  }
}

class Person1{
  String name;
  int age;
  Person1(String name,int age) {
    this.name = name;
    this.age = age;
  }
  void printInfo() {
    print("${this.name} ---------${this.age}");
  }
}

//默认构造函数简写
class Person2{
  String name;
  int age;
  Person2(this.name, this.age);
  void printInfo() {
    print("${this.name} ---------${this.age}");
  }
}


void main() {
  Person1 p1 = Person1("张三",20);
  p1.printInfo();
  Person1 p1_1 = Person1("李四",25);
  p1_1.printInfo();

  Person2 person2 = Person2("王五", 30);
  person2.printInfo();

}