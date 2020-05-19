
class Person{
  String name;
  int age;
  //默认构造函数
  Person(this.name,this.age);
  //命名构造函数 , 命名构造函数可以写多个
  Person.now() {
    print("我是命名 构造函数");
  }
  Person.setInfo(String name,int age) {
    this.name = name;
    this.age = age;
  }
  void printInfo() {
    print("${this.name} -------- ${this.age}");
  }
}

void main() {
  var p1 = Person.now();

  var p2 = Person.setInfo("李四", 30);
  p2.printInfo();

}