
class Person{
  String name = "张三";
  int age = 23;
  void getInfo() {
//    print("$name-------------$age");
  //推荐使用下面的  获取属性和方法
    print("${this.name}---------${this.age}");
  }

  void setInfo(int age) {
    this.age = age;
  }
}

void main() {
  var person = Person();
//  person.getInfo();
  person.setInfo(28);
  person.getInfo();

}