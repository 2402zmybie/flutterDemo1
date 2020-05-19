void main() {

  /**
   * 自定义方法 , 放在入口方法里面, 只能在局部入口方法适用
   */
  int getNum() {
    var myNum = 123;
    return myNum;
  }

  print(getNum());

  print(getNum2());
  print(printUserInfo());
  print(getList());
  print(globleList);


  //演示方法的作用域
  void method1() {
    aaa() {
      print("aaa");
      print(getList());  //getList()属于全局, 所以在aaa()里面也可以调用
    }
    aaa();
  }
 // aaa();  这是一种错误的写法 , aaa只属于method1()里面,在外面无法调用(闭包)
  method1();  //aaa

}


/**
 * 自定义方法 , 放在入口方法外面, 全局方法
 */
int getNum2() {
  var myNum = 456;
  return myNum;
}

String printUserInfo() {
  return "str";
}

List getList() {
  return ["111",2,"333"];
}

var globleList = ["str1","str2"];
