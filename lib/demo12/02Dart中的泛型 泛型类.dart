//List 底层就是泛型类

//案例  定义一个泛型类, 要求List里面可以增加int类型的数据,也可以增加String类型的数据
class PrintClass<T> {
  List list = new List<T>();
  void add(T value) {
    this.list.add(value);
  }
  void printInfo() {
    for(var i = 0; i < this.list.length; i++) {
      print(this.list[i]);
    }
  }
}



void main() {
  PrintClass<String> p1 = new PrintClass();
  p1.add("你好1");
  p1.add("你好2");
  p1.printInfo();

  PrintClass<int> p2 = new PrintClass();
  p2.add(1);
  p2.add(2);
  p2.printInfo();
}